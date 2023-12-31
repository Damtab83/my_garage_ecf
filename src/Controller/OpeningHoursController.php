<?php

namespace App\Controller;

use App\Repository\OpeningHoursRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OpeningHoursController extends AbstractController
{
    #[Route('/opening/hours', name: 'app_opening_hours')]
    public function index(OpeningHoursRepository $openingHoursRepository): Response
    {
        $openingHours = $openingHoursRepository->findAll();

        foreach ($openingHours as $openingHour) {
            $openingHour->updateDayOfWeek();
        }

        return $this->render('opening_hours/index.html.twig', [
            'openingHours' => $openingHours,
        ]);
    }
}
