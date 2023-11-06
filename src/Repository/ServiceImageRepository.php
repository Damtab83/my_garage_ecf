<?php

namespace App\Repository;

use App\Entity\ServiceImage;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<ServiceImage>
 *
 * @method ServiceImage|null find($id, $lockMode = null, $lockVersion = null)
 * @method ServiceImage|null findOneBy(array $criteria, array $orderBy = null)
 * @method ServiceImage[]    findAll()
 * @method ServiceImage[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class ServiceImageRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, ServiceImage::class);
    }

}
