<?php

namespace App\Controller\Admin;

use App\Entity\Service;
use App\Form\ServiceImageType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ServiceCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Service::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
        ->setEntityLabelInSingular('service')
        ->setEntityLabelInPlural('services')
        ->setPageTitle('index', 'Liste de services')
        ->setPaginatorPageSize(10);
    }

    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('title')
                ->setLabel('Titre du service'),
            TextEditorField::new('description')
                ->setLabel('Description'),
            CollectionField::new('serviceImages')
                ->setLabel('Images')
                ->setEntryType(ServiceImageType::class)
                ->hideOnIndex(),
        ];
    }
}
