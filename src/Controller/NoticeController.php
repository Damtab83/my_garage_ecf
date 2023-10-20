<?php

namespace App\Controller;

use App\Repository\NoticeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

#[Route('/notice')]
class NoticeController extends AbstractController
{
    #[Route('/', name: 'app_notice', methods: ['GET', 'POST'])]
    public function index(NoticeRepository $noticeRepository): Response
    {
        $notices = $noticeRepository->findAll();

        return $this->render('notice/index.html.twig', [
            'notices' => $notices,
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
