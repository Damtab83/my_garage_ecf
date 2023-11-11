<?php

namespace App\Controller\Admin;

use App\Entity\OpeningHours;
use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\TimeField;

class OpeningHoursCrudController extends AbstractCrudController
{
    public static function getEntityFqcn(): string
    {
        return OpeningHours::class;
    }

    public function configureActions(Actions $actions): Actions
    {
        return $actions
            ->remove(Crud::PAGE_INDEX, Action::NEW);
            // ->remove(Crud::PAGE_INDEX, Action::DELETE)
            
    }

    public function configureCrud(Crud $crud): Crud
    {
        return $crud
            ->setTimeFormat('HH:mm')
            ->setPageTitle('index', 'Horaires du Garage')
            ->showEntityActionsInlined()
            ->setPaginatorPageSize(1)
            ->renderContentMaximized();
    }
    
    public function configureFields(string $pageName): iterable
    {
        return [
            IdField::new('id')
                ->hideOnIndex()
                ->hideOnForm(),
            TimeField::new('openTime'),
            TimeField::new('closeTime'),
            TimeField::new('openTimeAfternoon'),
            TimeField::new('closeTimeAfternoon'),
        ];
    }
    
}
