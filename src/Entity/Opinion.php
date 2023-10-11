<?php

namespace App\Entity;

use App\Repository\OpinionRepository;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: OpinionRepository::class)]
#[UniqueEntity(
    fields: ['Fullname'],
    errorPath: 'fullname',
    message: 'Ce Nom d\'utilisateur a déjà été utilisé pour noter le site.'
)]
class Opinion
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Assert\NotBlank()]
    private ?string $Fullname = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank()]
    private ?string $comment = null;

    #[ORM\Column]
    #[Assert\NotNull()]
    #[Assert\Positive()]
    #[Assert\LessThan(6)]
    private ?int $ranking = null;

    #[ORM\Column]
    private ?bool $isValid = false;

    #[ORM\Column]
    private ?\DateTimeImmutable $createdAt = null;

    private ?float $average = null;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();   
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFullname(): ?string
    {
        return $this->Fullname;
    }

    public function setFullname(string $Fullname): static
    {
        $this->Fullname = $Fullname;

        return $this;
    }

    public function getComment(): ?string
    {
        return $this->comment;
    }

    public function setComment(string $comment): static
    {
        $this->comment = $comment;

        return $this;
    }

    public function getRanking(): ?int
    {
        return $this->ranking;
    }

    public function setRanking(int $ranking): static
    {
        $this->ranking = $ranking;

        return $this;
    }

    public function isIsValid(): ?bool
    {
        return $this->isValid;
    }

    public function setIsValid(bool $isValid): static
    {
        $this->isValid = $isValid;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeImmutable
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeImmutable $createdAt): static
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function __toString(): string
    {
        return $this->Fullname;
    }

    public function getAverage()
    {
        $ranking = $this->ranking;

        if ($ranking->toArray() === []) {
            $this->average = null;
            return $this->average;
        }
        $total = 0;

        foreach ($ranking as $rank)
        {
            $total += $rank->getRanking();
        }

        $this->average = $total / count($ranking);

        return $this->average;
    }
}
