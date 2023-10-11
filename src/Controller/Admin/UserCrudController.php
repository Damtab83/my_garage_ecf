<?php

namespace App\Controller\Admin;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\ChoiceField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class UserCrudController extends AbstractCrudController
{
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
        return [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('fullname')
                ->setLabel('Nom Prénom')
                ->setDisabled(true),
            EmailField::new('email')
                ->setLabel('Email'),
            ChoiceField::new('roles')
                ->setLabel('Statut  de l\'employé')
                ->setLabel('Roles')
                ->setChoices([
                    'Admin' => 'ROLE_ADMIN',
                    'Vendeur' => 'ROLE_SELLER',
                ])
                ->allowMultipleChoices()
                ->renderExpanded(true)
                ->hideOnIndex(),
        ];
    }
    
}
