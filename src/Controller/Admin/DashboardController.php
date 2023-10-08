<?php

namespace App\Controller\Admin;

use App\Entity\Notice;
use App\Entity\NoticeImage;
use App\Entity\Service;
use App\Entity\ServiceImage;
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
        yield MenuItem::linkToDashboard('Dashboard', 'fa fa-home');
        yield MenuItem::linkToCrud('Annonces', 'fas fa-car-side', Notice::class);
        yield MenuItem::linkToCrud('Images des Annonces', 'fas fa-images', NoticeImage::class);
        yield MenuItem::linkToCrud('Service', 'fas fa-screwdriver-wrench', Service::class);
        yield MenuItem::linkToCrud('Images des Services', 'fas fa-images', ServiceImage::class);
    }
}
