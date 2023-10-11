<?php

namespace App\Controller\Admin;

use App\Entity\ServiceImage;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class ServiceImageCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return ServiceImage::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('name')
                ->setLabel('Nome de l\'image'),
            IntegerField::new('Taille de l\'image'),
        ];
    }

}
