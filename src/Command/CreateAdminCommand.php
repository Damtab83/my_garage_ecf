<?php

namespace App\Command;

use App\Entity\User;
use App\Repository\UserRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Console\Attribute\AsCommand;
use Symfony\Component\Console\Command\Command;
use Symfony\Component\Console\Input\InputArgument;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\Console\Question\Question;
use Symfony\Component\Console\Style\SymfonyStyle;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

#[AsCommand(
    name: 'app:create-admin',
    description: 'Create an Administrator',
)]
class CreateAdminCommand extends Command
{
    private EntityManagerInterface $entityManager;

    public function __construct(
        EntityManagerInterface $entityManager,
        private readonly UserRepository $repository,
        private readonly UserPasswordHasherInterface $hasher,
    )
    {
        parent::__construct();
        $this->entityManager =  $entityManager;
    }

    protected function configure(): void
    {
        $this
            ->addArgument('fullname', InputArgument::OPTIONAL, 'Nom Prénom')
            ->addArgument('email', InputArgument::OPTIONAL, 'Email')
            ->addArgument('password', InputArgument::OPTIONAL, 'Mot de passe')
            ->addArgument('plainPassword', InputArgument::OPTIONAL, 'Confirmer mot de passe')
        ;
    }


    protected function execute(InputInterface $input, OutputInterface $output): int
    {
        $io = new SymfonyStyle($input, $output);
        $helper = $this->getHelper('question');

        $fullName = $input->getArgument('fullname');
        if (!$fullName) {
            $question = new Question('Quel est le nom de l\'administrateur : ');
            $fullName = $helper->ask($input, $output, $question);
        }
        $email = $input->getArgument('email');
        if (!$email) {
            $question = new Question('Quel est l\'email de ' . $fullName . ' : ');
            $email = $helper->ask($input, $output, $question);
        }
        $password = $input->getArgument('password');
        if (!$password) {
            $question = new Question('Quel est le mot de passe  de ' . $fullName . ' : ');
            $question->setHidden(true);
            $password = $helper->ask($input, $output, $question);

        }
        $plainPassword = $input->getArgument('plainPassword');
        if (!$plainPassword) {
            $question = new Question('Confirmer le mot de passe  de ' . $fullName . ' : ');
            $question->setHidden(true);
            $plainPassword = $helper->ask($input, $output, $question);

        }

        $user = new User();
        $user->setFullname($fullName)
            ->setEmail($email)
            ->setPassword(
            $this->hasher->hashPassword($user, $password)
        )
            ->setPlainPassword(
            $this->hasher->hashPassword($user, $plainPassword)
        )
            ->setRoles(['ROLE_SELLER', 'ROLE_ADMIN']);
        
        $this->entityManager->persist($user);
        $this->entityManager->flush();

        $io->success('Le nouvel Administrateur a été créé !');

        return Command::SUCCESS;
    }
}
