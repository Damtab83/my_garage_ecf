<?php

namespace App\Controller\Admin;

use App\Entity\Notice;
use App\Form\NoticeImageType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\MoneyField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class NoticeCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Notice::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setEntityLabelInSingular('annonce')
            ->setEntityLabelInPlural('annonces')
            ->setPageTitle('index', 'Liste des annonces')
            ->setPaginatorPageSize(20);
    }
    
    public function configureFields(string $pageName): iterable
    {
        $fields = [
            TextField::new('brand')
                ->setLabel('Marque'),
            TextField::new('model')
                ->setLabel('Modèle'),
            TextEditorField::new('description')
                ->setLabel('Description')
                ->hideOnIndex(),
            CollectionField::new('noticeImages')
                ->setLabel('Image')
                ->hideOnIndex()
                ->setEntryType(NoticeImageType::class),
            MoneyField::new('price')
                ->setLabel('Prix')
                ->setCurrency('EUR'),
            IntegerField::new('kilometer')
                ->setLabel('Kilomètre'),
            DateTimeField::new('release_date')
                ->setLabel('Date d\'immatriculation')
                ->hideOnIndex()
                ->setDisabled(true),
            

        ];
        if ($pageName === Crud::PAGE_NEW || $pageName === Crud::PAGE_EDIT) {
            $fields[] = DateTimeField::new('created_at')
                ->setFormType(\Symfony\Component\Form\Extension\Core\Type\DateTimeType::class)
                ->setFormTypeOptions([
                    'input' => 'datetime_immutable',
                ])
                ->setLabel('Date de création')
                ->hideOnIndex();
        } else {
            $fields[] = DateTimeField::new('created_at')
            ->hideOnIndex();
        }
    
        return $fields;
    }
    
}
