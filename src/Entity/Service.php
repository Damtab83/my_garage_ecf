<?php

namespace App\Entity;

use App\Repository\ServiceRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: ServiceRepository::class)]
class Service
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 50)]
    #[Assert\NotBlank()]
    #[Assert\Length(min: 2, max: 50)]
    private ?string $title = null;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank()]
    private ?string $description = null;

    #[ORM\OneToMany(mappedBy: 'service', targetEntity: ServiceImage::class, orphanRemoval: true, cascade:['persist'])]
    private Collection $serviceImages;

    public function __construct()
    {
        $this->serviceImages = new ArrayCollection();
    }


    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): static
    {
        $this->title = $title;

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

    public function __toString()
    {
        return $this->getTitle();
    }

    /**
     * @return Collection<int, ServiceImage>
     */
    public function getServiceImages(): Collection
    {
        return $this->serviceImages;
    }

    public function addServiceImage(ServiceImage $serviceImage): static
    {
        if (!$this->serviceImages->contains($serviceImage)) {
            $this->serviceImages->add($serviceImage);
            $serviceImage->setService($this);
        }

        return $this;
    }

    public function removeServiceImage(ServiceImage $serviceImage): static
    {
        if ($this->serviceImages->removeElement($serviceImage)) {
            // set the owning side to null (unless already changed)
            if ($serviceImage->getService() === $this) {
                $serviceImage->setService(null);
            }
        }

        return $this;
    }
}
