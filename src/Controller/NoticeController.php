<?php

namespace App\Controller;

use App\Data\SearchPrice;
use App\Form\SearchPriceFormType;
use App\Repository\NoticeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/notice')]
class NoticeController extends AbstractController
{
    #[Route('/', name: 'app_notice', methods: ['GET'])]
    public function index(NoticeRepository $noticeRepository,Request $request): Response
    {
        $data = new SearchPrice();
        $form = $this->createForm(SearchPriceFormType::class, $data);
        $form->handleRequest($request);
        $notices = $noticeRepository->findSearch($data);
       
        return $this->render('notice/index.html.twig', [
            'notices' => $notices,
            'form' => $form->createView(),
        ]);
    }

    #[Route('/{id}', name: 'app_notice_details', methods: ['GET'], requirements: ['id' => '\d+'])]
    public function details(NoticeRepository $noticeRepository, int $id): Response
    {
        $notice = $noticeRepository->findOneBy(['id' => $id]);

        return $this->render('notice/notice_descriptive.html.twig', [
            'notice' => $notice,
        ]);
    }
}
