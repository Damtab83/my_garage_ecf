<?php

namespace App\Repository;

use App\Entity\Notice;
use App\Model\Search;
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
    public function findBySearch(Search $search): array
    {
        $query = $this
            ->createQueryBuilder('n');

        if(!empty($search->minPrice)) {
            $query = $query
                ->andWhere('n.price >= :minP')
                ->setParameter('minP', $search->minPrice);
        }

        if(!empty($search->maxPrice)) {
            $query = $query
                ->andWhere('n.price <= :maxP')
                ->setParameter('maxP', $search->maxPrice);
        }
        if(!empty($search->minKilometer)) {
            $query = $query
                ->andWhere('n.kilometer >= :minK')
                ->setParameter('minK', $search->minKilometer);
        }

        if(!empty($search->maxKilometer)) {
            $query = $query
                ->andWhere('n.kilometer <= :maxK')
                ->setParameter('maxK', $search->maxKilometer);
        }

        if (!empty($search->minYear)) {
            $minYearExpression = $query->expr()->literal($search->minYear);
            $query = $query
                ->andWhere('SUBSTRING(n.releaseDate, 1, 4) >= ' . $minYearExpression);
        }

        if (!empty($search->maxYear)) {
            $maxYearExpression = $query->expr()->literal($search->maxYear);
            $query = $query
                ->andWhere('SUBSTRING(n.releaseDate, 1, 4) <= ' . $maxYearExpression);
        }

    
        
        return $query->getQuery()->getResult();
    }

}
