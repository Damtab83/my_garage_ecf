<?php

namespace App\Entity;

use App\Repository\NoticeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: NoticeRepository::class)]
#[Vich\Uploadable]
class Notice
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    #[Assert\NotBlank()]
    #[Assert\Length(min: 2, max: 50)]
    private ?string $brand = null;

    #[ORM\Column(length: 50)]
    #[Assert\NotBlank()]
    #[Assert\Length(min: 2, max: 50)]
    private ?string $model = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank()]
    private ?string $description = null;

    #[ORM\Column]
    #[Assert\NotNull()]
    #[Assert\Positive()]
    private ?int $kilometer = null;

    #[ORM\Column]
    #[Assert\NotNull()]
    #[Assert\Positive()]
    private ?int $price = null;

    #[ORM\Column(type: Types::DATE_MUTABLE)]
    #[Assert\NotNull()]
    private ?\DateTimeInterface $releaseDate = null;

    #[ORM\Column]
    #[Assert\NotNull()]
    private ?\DateTimeImmutable $createdAt = null;

    #[ORM\OneToMany(mappedBy: 'notice', targetEntity: NoticeImage::class, orphanRemoval: true, cascade: ['persist'])]
    private Collection $noticeImages;

    public function __construct()
    {
        $this->noticeImages = new ArrayCollection();
        $this->createdAt = new \DateTimeImmutable();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBrand(): ?string
    {
        return $this->brand;
    }

    public function setBrand(string $brand): static
    {
        $this->brand = $brand;

        return $this;
    }

    public function getModel(): ?string
    {
        return $this->model;
    }

    public function setModel(string $model): static
    {
        $this->model = $model;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): static
    {
        $this->description = $description;

        return $this;
    }

    public function getKilometer(): ?int
    {
        return $this->kilometer;
    }

    public function setKilometer(int $kilometer): static
    {
        $this->kilometer = $kilometer;

        return $this;
    }

    public function getPrice(): ?int
    {
        return $this->price;
    }

    public function setPrice(int $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getReleaseDate(): ?\DateTimeInterface
    {
        return $this->releaseDate;
    }

    public function setReleaseDate(\DateTimeInterface $releaseDate): static
    {
        $this->releaseDate = $releaseDate;

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

    public function __toString()
    {
        return $this->brand;
    }

    /**
     * @return Collection<int, NoticeImage>
     */
    public function getNoticeImages(): Collection
    {
        return $this->noticeImages;
    }

    public function addNoticeImage(NoticeImage $noticeImage): static
    {
        if (!$this->noticeImages->contains($noticeImage)) {
            $this->noticeImages->add($noticeImage);
            $noticeImage->setNotice($this);
        }

        return $this;
    }

    public function removeNoticeImage(NoticeImage $noticeImage): static
    {
        if ($this->noticeImages->removeElement($noticeImage)) {
            // set the owning side to null (unless already changed)
            if ($noticeImage->getNotice() === $this) {
                $noticeImage->setNotice(null);
            }
        }

        return $this;
    }
}
