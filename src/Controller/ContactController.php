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
    #[Route('/contact', name: 'app_contact', methods: ['GET', 'POST'])]
    public function index(Request $request, EntityManagerInterface $manager): Response
    {
        $contact = new Contact();
        //Gestion du subject du formulaire
        $source = $request->query->get('source');
        $subject = '';
        
        if ($source === 'service') {
            $subject = 'Demande de service à l\'atelier';
        } elseif ($source === 'notice') {
            $subject = 'Demande d\'informations sur un véhicule en vente';
        } else {
            $subject = 'Demande de renseignement';
        }
        //Création du formulaire
        $form = $this->createForm(ContactType::class, $contact, ['subject' => $subject]);
        
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            
            $contact = $form->getData();
            $subject = $contact->getSubject();
            
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
