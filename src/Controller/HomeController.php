<?php

namespace App\Controller;

use App\Repository\OpinionRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class HomeController extends AbstractController
{
    #[Route('/', name: 'app_home')]
    public function index(OpinionRepository $opinionRepository): Response
    {
        $latestOpinion = $opinionRepository->findLatestOpinion();
        $averageRating = $opinionRepository->findAverageRating();

        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
            'latest_opinion' => $latestOpinion,
            'average_rating' => $averageRating,
        ]);
    }


    #[Route('/*', name: 'app_error_page')]
    public function errorPage(): Response
    {
        
        return $this->render('home/index.html.twig', [
            'controller_name' => 'HomeController',
        ]);
    }
    
}
