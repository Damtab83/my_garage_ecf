<?php

namespace App\Repository;

use App\Entity\NoticeImage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<NoticeImage>
 *
 * @method NoticeImage|null find($id, $lockMode = null, $lockVersion = null)
 * @method NoticeImage|null findOneBy(array $criteria, array $orderBy = null)
 * @method NoticeImage[]    findAll()
 * @method NoticeImage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NoticeImageRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, NoticeImage::class);
    }

//    /**
//     * @return NoticeImage[] Returns an array of NoticeImage objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('n')
//            ->andWhere('n.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('n.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?NoticeImage
//    {
//        return $this->createQueryBuilder('n')
//            ->andWhere('n.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}
