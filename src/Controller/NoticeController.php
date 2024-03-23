<?php

namespace App\Controller;

use App\Model\Search;
use App\Form\SearchType;
use App\Repository\NoticeRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


#[Route('/notice')]
class NoticeController extends AbstractController
{
    #[Route('/', name: 'app_notice', methods: ['GET'])]
    public function index(NoticeRepository $noticeRepository, Request $request): Response
    {
        $search = new Search();
        $form = $this->createForm(SearchType::class, $search);
        $form->handleRequest($request);
        
        $notices = $noticeRepository->findBySearch($search);
        if ($request->get('ajax')) {
            return new JsonResponse([
                'content' => $this->renderView('notice/_notice.html.twig', ['notices' => $notices])
            ]);
        }
       
        return $this->render('notice/index.html.twig', [
            'form' => $form->createView(),
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
