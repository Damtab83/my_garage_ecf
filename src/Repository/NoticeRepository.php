<?php

namespace App\Repository;

use App\Data\SearchPrice;
use App\Entity\Notice;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;
/**
 * @extends ServiceEntityRepository<Notice>
 *
 * @method Notice|null find($id, $lockMode = null, $lockVersion = null)
 * @method Notice|null findOneBy(array $criteria, array $orderBy = null)
 * @method Notice[]    findAll()
 * @method Notice[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NoticeRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Notice::class);
    }

    /**
     * Récupère les produits en lien avec une recherche
     * @return Notice[]
     */
    public function findSearch(SearchPrice $search): array
    {
        $query = $this
            ->createQueryBuilder('n')
            ->select('n');

        if (!empty($search->min)) {
            $query =$query
                ->andWhere('n.price >= :min')
                ->setParameter('min', $search->min);
        }

        if (!empty($search->max)) {
            $query =$query
                ->andWhere('n.price <= :max')
                ->setParameter('max', $search->max);
        }
        return $query->getQuery()->getResult();
        
        
    }
}
