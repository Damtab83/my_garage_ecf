<?php

namespace App\Controller\Admin;

use App\Entity\ServiceImage;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

class ServiceImageCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return ServiceImage::class;
    }

    /*
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id'),
            TextField::new('title'),
            TextEditorField::new('description'),
        ];
    }
    */
}
