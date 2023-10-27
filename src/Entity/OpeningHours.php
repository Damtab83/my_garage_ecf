<?php

namespace App\Entity;

use App\Repository\OpeningHoursRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OpeningHoursRepository::class)]
class OpeningHours
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    private ?\DateTimeInterface $dayOfWeek = null;

    #[ORM\Column(type: Types::TIME_MUTABLE)]
    private ?\DateTimeInterface $openTime = null;

    #[ORM\Column(type: Types::TIME_MUTABLE)]
    private ?\DateTimeInterface $closeTime = null;

    #[ORM\Column(type: Types::TIME_MUTABLE)]
    private ?\DateTimeInterface $openTimeAfternoon = null;

    #[ORM\Column(type: Types::TIME_MUTABLE)]
    private ?\DateTimeInterface $closeTimeAfternoon = null;


    public function __construct()
    {
        $this->dayOfWeek = new \DateTimeImmutable();
    }

    public function updateDayOfWeek()
    {
        $currentDate = new \DateTimeImmutable();
        $this->dayOfWeek = $currentDate;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDayOfWeek(): ?\DateTimeInterface
    {
        return $this->dayOfWeek;
    }

    public function setDayOfWeek(\DateTimeInterface $dayOfWeek): static
    {
        $this->dayOfWeek = $dayOfWeek;

        return $this;
    }

    public function getOpenTime(): ?\DateTimeInterface
    {
        return $this->openTime;
    }

    public function setOpenTime(\DateTimeInterface $openTime): static
    {
        $this->openTime = $openTime;

        return $this;
    }

    public function getCloseTime(): ?\DateTimeInterface
    {
        return $this->closeTime;
    }

    public function setCloseTime(\DateTimeInterface $closeTime): static
    {
        $this->closeTime = $closeTime;

        return $this;
    }

    public function getOpenTimeAfternoon(): ?\DateTimeInterface
    {
        return $this->openTimeAfternoon;
    }

    public function setOpenTimeAfternoon(\DateTimeInterface $openTimeAfternoon): static
    {
        $this->openTimeAfternoon = $openTimeAfternoon;

        return $this;
    }

    public function getCloseTimeAfternoon(): ?\DateTimeInterface
    {
        return $this->closeTimeAfternoon;
    }

    public function setCloseTimeAfternoon(\DateTimeInterface $closeTimeAfternoon): static
    {
        $this->closeTimeAfternoon = $closeTimeAfternoon;

        return $this;
    }
}
