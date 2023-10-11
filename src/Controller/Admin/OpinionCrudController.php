<?php

namespace App\Controller\Admin;

use App\Entity\Opinion;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\BooleanField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextEditorField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class OpinionCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return Opinion::class;
    }

    public function configureCrud(Crud $crud): Crud
    {
        return$crud
            ->setPageTitle('index', 'Liste des avis clients')
            ->setPaginatorPageSize(10);
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('fullname'),
            TextEditorField::new('comment'),
            IntegerField::new('ranking')
                ->hideOnIndex(),
            BooleanField::new('isValid')
                ->setLabel('Validation'),
        ];
    }
    
}
