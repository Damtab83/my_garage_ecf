<?php

namespace App\Model;

use DateTimeImmutable;

class Search
{
    /**
     * @var null|integer
     */
    public $minPrice;

    /**
     * @var null|integer
     */
    public $maxPrice;

    /**
     * @var null|integer
     */
    public $minKilometer;

    /**
     * @var null|integer
     */
    public $maxKilometer;

    /**
     * @var null|?DateTimeImmutable
     */
    public $minYear;

    /**
     * @var null|?DateTimeImmutable
     */
    public $maxYear;

}