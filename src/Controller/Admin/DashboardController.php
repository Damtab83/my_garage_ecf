<?php

namespace App\Controller\Admin;

use App\Entity\Contact;
use App\Entity\Notice;
use App\Entity\NoticeImage;
use App\Entity\OpeningHours;
use App\Entity\Opinion;
use App\Entity\Service;
use App\Entity\ServiceImage;
use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class DashboardController extends AbstractDashboardController
{
    #[Route('/admin', name: 'admin')]
    public function index(): Response
    {

        // $adminUrlGenerator = $this->container->get(AdminUrlGenerator::class);
        // return $this->redirect($adminUrlGenerator->setController(ContactCrudController::class)->generateUrl());

        return $this->render('/admin/adminDashboard.html.twig');
    }

    public function configureDashboard(): Dashboard
    {
        return Dashboard::new()
            ->setTitle('My Garage Ecf');
    }

    public function configureMenuItems(): iterable
    {
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-house-laptop');
        yield MenuItem::subMenu('Annonces voitures', 'fas fa-car-side')->setSubItems([
            MenuItem::linkToCrud('Annonces', 'fas fa-car-side', Notice::class),
            MenuItem::linkToCrud('Images des Annonces', 'fas fa-images', NoticeImage::class),
        ]);
        yield MenuItem::subMenu('Services atelier', 'fas fa-screwdriver-wrench')->setSubItems([
            MenuItem::linkToCrud('Services', 'fas fa-screwdriver-wrench', Service::class),
            MenuItem::linkToCrud('Images des Services', 'fas fa-images', ServiceImage::class),
        ])
            ->setPermission('ROLE_ADMIN')
            ;
        yield MenuItem::linkToCrud('Demande de contacts', 'fas fa-envelope', Contact::class);
        yield MenuItem::linkToCrud('Avis clients', 'fas fa-newspaper', Opinion::class);
        yield MenuItem::linkToCrud('Utilisateurs', 'fas fa-users', User::class)
            ->setPermission('ROLE_ADMIN')
            ;
        yield MenuItem::linkToCrud('Horaires', 'fas fa-clock', OpeningHours::class)
            ->setPermission('ROLE_ADMIN')
            ;
        yield MenuItem::section();
        yield MenuItem::linkToUrl('Retour au site', 'fas fa-reply-all', '/');
    }
}
