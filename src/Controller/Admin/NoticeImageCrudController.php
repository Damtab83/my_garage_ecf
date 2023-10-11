<?php

namespace App\Controller\Admin;

use App\Entity\NoticeImage;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IntegerField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;

class NoticeImageCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return NoticeImage::class;
    }

    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')
                ->hideOnForm(),
            TextField::new('name')
                ->setLabel('Nom'),
            IntegerField::new('size')
                ->setLabel('Taille de l\'image'),
        ];
    }
    
}
