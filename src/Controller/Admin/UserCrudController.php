<?php

namespace App\Controller\Admin;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Doctrine\ORM\EntityManagerInterface;


class UserCrudController extends AbstractCrudController
{
    private UserPasswordHasherInterface $passwordEncoder;

    public function __construct(UserPasswordHasherInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public static function getEntityFqcn(): string
    {
        return User::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
        ->setEntityLabelInPlural('Employés')
        ->setEntityLabelInSingular('Employé')
        ->setPageTitle('index', 'Liste des employés');
    }

    
    public function configureFields(string $pageName): iterable
    {
        $fields = [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('fullname')
                ->setLabel('Nom Prénom'),
            EmailField::new('email')
                ->setLabel('Email'),
            TextField::new('password')
                ->setFormType(\Symfony\Component\Form\Extension\Core\Type\PasswordType::class)
                ->hideOnIndex()
                ->setLabel('Mot de Passe'),
        ];
    
        $rolesField = ChoiceField::new('roles')
            ->setLabel('Statut de l\'employé')
            ->setChoices([
                'Admin' => 'ROLE_ADMIN',
                'Vendeur' => 'ROLE_SELLER',
            ])
            ->allowMultipleChoices()
            ->renderExpanded(true);
    
        if ($pageName == Crud::PAGE_NEW || $pageName == Crud::PAGE_EDIT) {
            $rolesField->onlyOnForms();
        } else {
            $rolesField->onlyOnIndex();
        }
    
        $fields[] = $rolesField;
    
        return $fields;     
    }

    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        $this->updatePassword($entityInstance);
        parent::persistEntity($entityManager, $entityInstance);
    }

    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {   
        $this->updatePassword($entityInstance);
        parent::updateEntity($entityManager, $entityInstance);
    }

    private function updatePassword(User $user): void
    {
        $plainPassword = $user->getPassword();
        
        if ($plainPassword !== null) {
            $hashedPassword = $this->passwordEncoder->hashPassword($user, $plainPassword);
            $user->setPassword($hashedPassword);
        }
    }
    
}
