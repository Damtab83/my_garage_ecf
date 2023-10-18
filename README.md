# my_garage_ecf  
-----------------------------

Ce projet a été conçu dans le cadre du Titre Professionnel de Dévoleppeur Web et Web Mobile.  

## Installation pour serveur local  

**Pré-requis:**  
  - Avoir PHP installer sur son Pc ==> sinon se rendre sur le site de [PHP](https://www.php.net/manual/fr/faq.installation.php),  
  - Avoir installer composer sur son Pc ==> sinon se rendre sur le site de [Composer](https://getcomposer.org/),
  - Avoir installer une solution pour la gestion de Base De Données: dasn mon cas j'ai utilisé [XAMPP](https://www.apachefriends.org/fr/index.html),

**Téléchargement**  
  Une fois que vous avez installer les composants, vous pouvez vous rendre sur le [GitHub](https://github.com/Damtab83/my_garage_ecf) pour copier le projet.  

  * Se rendre dans le fichier dédier au serveur local: dans le cas de XAMPP :  
  ` C:\xampp\htdocs`
  - Ouvrir le terminal de votre Pc :
  `exemple: Powershell`
  

**Il ne reste plus qu'à cloner le projet et à l'installer !**
```
git clone https://github.com/Damtab83/my_garage_ecf.git
cd my_garage_ecf
composer install
```
Une fois tous les fichiers installés, lancer le serveur:
```
composer server:start
```

**Création d'un Administrateur**
```
php bin/console app:create-admin
```
Vous remplissez le formulaire...

Après instalation et configuration, vous pourrez ouvrir le projet sur votre navigateur  
à l'adresse : [localhost](https://127.0.0.1:8000)

-----------------------------
This project was designed as part of the Professional Title of Web and Mobile Web Developer.

## Installation for local server

**Prerequisites:**
  - Have PHP installed on your PC ==> otherwise go to the [PHP] site (https://www.php.net/manual/fr/faq.installation.php),
  - Have composer installed on your PC ==> otherwise go to the [Composer] website (https://getcomposer.org/),
  - Have installed a solution for Database management: in my case I used [XAMPP](https://www.apachefriends.org/fr/index.html),

**Download**
  Once you have installed the components, you can go to [GitHub](https://github.com/Damtab83/my_garage_ecf) to copy the project.  

  * Go to the file dedicated to the local server: in the case of XAMPP:
  ` C:\xampp\htdocs`
  - Open your PC terminal:
  `example: Powershell`
  

**All that remains is to clone the project and install it!**
```
git clone https://github.com/Damtab83/my_garage_ecf.git
cd my_garage_ecf
composer install
```

Once all files are installed, start the server:
```
composer server:start
```

**Create Administrator**
```
php bin/console app:create-admin
```
Complete form...

After installation and configuration you can open the project on your browser
at : [localhost](https://127.0.0.1:8000)
