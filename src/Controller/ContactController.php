<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ContactController extends AbstractController
{
    #[Route('/contact', name: 'app_contact')]
    public function index(Request $request, EntityManagerInterface $manager): Response
    {
        $contact = new Contact();

        //Gestion du sujet du formulaire
        $source = $request->query->get('source');
        $sujet = '';

        if ($source === 'service') {
            $sujet = 'Demande de service à l\'atelier';
        } elseif ($source === 'notice') {
            $sujet = 'Demande d\'informations sur un véhicule en vente';
        } else {
            'Demande de renseignement';
        }

        //Création du formulaire
        $form = $this->createForm(ContactType::class, $contact, ['sujet' => $sujet]);

        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $contact = $form->getData();

            $manager->persist($contact);

            $manager->flush();

            $this->addFlash(
                'success',
                'Votre message a bien été envoyé avec succès'
            );

            return $this->redirectToRoute('app_contact');
        }

        return $this->render('contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
