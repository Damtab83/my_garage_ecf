<?php

namespace App\Form;

use App\Model\Search;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
        ->add('minPrice', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Prix mini',
            ],
        ])
        ->add('maxPrice', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Prix maxi',
            ],
        ])
        ->add('minKilometer', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Kilométrage mini',
            ],
        ])
        ->add('maxKilometer', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Kilométrage maxi',
            ],
        ])
        ->add('minYear', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Date mini',
            ],
        ])
        ->add('maxYear', IntegerType::class, [
            'label' => false,
            'required' => false,
            'attr' => [
                'placeholder' => 'Date maxi',
            ],
        ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Search::class,
            'method' => 'GET',
            'csrf_protection' => false
        ]);
    }

    public function getBlockPrefix()
    {
        return '';
    }
}
