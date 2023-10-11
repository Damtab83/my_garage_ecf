<?php

namespace App\Controller;

use App\Entity\Opinion;
use App\Form\OpinionType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class OpinionController extends AbstractController
{
    #[Route('/opinion', name: 'app_opinion')]
    public function index(Request $request, EntityManagerInterface $manager): Response
    {
        $opinion = new Opinion();

        $form = $this->createForm(OpinionType::class);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $opinion = $form->getData();

            $manager->persist($opinion);
            $manager->flush();

            $this->addFlash(
                'success',
                'Votre message a bien été envoyé avec succès, notre modérateur validera votre commenntaire dans les plus brefs délais.'
            );

            return $this->redirectToRoute('app_home');
        }

        return $this->render('opinion/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
