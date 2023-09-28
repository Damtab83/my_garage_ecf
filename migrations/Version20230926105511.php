<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230926105511 extends AbstractMigration
{
    public function getDescription(): string
    {
        return 'Added NoticeImage entity';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE notice_image (id INT AUTO_INCREMENT NOT NULL, notice_id INT NOT NULL, name VARCHAR(255) NOT NULL, size INT NOT NULL, INDEX IDX_FD584E07D540AB (notice_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE notice_image ADD CONSTRAINT FK_FD584E07D540AB FOREIGN KEY (notice_id) REFERENCES notice (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE notice_image DROP FOREIGN KEY FK_FD584E07D540AB');
        $this->addSql('DROP TABLE notice_image');
    }
}
