# WindowsFormsAppGM23

Application Windows Forms (.NET Framework 4.8) de gestion simple du matériel, des clients et des interventions.

Cette solution contient :
- Une application WinForms (FormGM comme fenêtre principale) avec des écrans pour gérer les Clients et le Matériel.
- Un script SQL [WindowsFormsAppGM23/database/GM23.sql](WindowsFormsAppGM23/database/GM23.sql) pour créer et peupler la base de données d’exemple (tables Client, Materiel, Intervention, Type_materiel, etc.).

## Prérequis
- Windows
- .NET Framework 4.8
- IDE recommandé : JetBrains Rider ou Microsoft Visual Studio
- SQL Server (Express suffit) ou SQL Server Developer

## Guide unique : démarrage, base de données, compilation et exécution
1. Cloner le dépôt :
   - `git clone https://github.com/Deathwong/WindowsFormsAppGM23`
   - `cd WindowsFormsAppGM23`
2. Ouvrir la solution dans Rider/Visual Studio (ou poursuivre en terminal).
3. Préparer la base de données :
   - Ouvrir SQL Server Management Studio (SSMS) ou un outil équivalent.
   - Exécuter le script [WindowsFormsAppGM23/database/GM23.sql](WindowsFormsAppGM23/database/GM23.sql).
   - Le script vérifie l'existence de la base `GM23` et la crée si nécessaire, puis crée les tables et insère des données d’exemple.
   - Option manuelle : créer d'abord une base appelée `GM23`, puis exécuter le reste du script.
   - Le script crée notamment :
     - `Client(ID_CLIENT, Nom, Adresse, Mail, Tel)`
     - `Connexion(ID_CONNEXION, Login, Password)`
     - `Intervention(ID_INTER, Date_inter, Commentaire, ID_MATOS)`
     - `Materiel(ID_MATOS, Nom_modele, Marque, NoSerie, Prix, Date_installation, ID_TYPE_MATOS, ID_CLIENT)`
     - `Type_materiel(ID_TYPE_MATOS, Nom, MTBF)`
4. Adapter la chaîne de connexion si nécessaire :
   - Dans `WindowsFormsAppGM23/App.config`, vérifiez/ajustez la chaîne de connexion (instance SQL Server, sécurité, etc.).
5. Compiler et exécuter :
   - Depuis Rider : bouton Run sur le projet `WindowsFormsAppGM23` (Configuration Debug/Any CPU).
   - Depuis Visual Studio : définir `WindowsFormsAppGM23` comme projet de démarrage puis F5.
   - Depuis le terminal (PowerShell):
     1. Restaurer/compilier:
        - `msbuild .\WindowsFormsAppGM23\WindowsFormsAppGM23.csproj /t:Restore,Build /p:Configuration=Debug`
        - ou avec .NET Framework MSBuild via Developer Command Prompt.
     2. Lancer l'exécutable:
        - `Start-Process -FilePath .\WindowsFormsAppGM23\bin\Debug\WindowsFormsAppGM23.exe`
     3. Option en un seul coup (si déjà compilé):
        - `& .\WindowsFormsAppGM23\bin\Debug\WindowsFormsAppGM23.exe`

## Structure du projet
- `WindowsFormsAppGM23.sln` : Solution
- `WindowsFormsAppGM23/` : Projet WinForms
  - `Program.cs` : point d’entrée (Application.Run(new FormGM()))
  - `Form1.*` (FormGM) : écran principal (menu, actions)
  - `FormClient.*` : gestion des clients
  - `FormMateriel.*` : gestion du matériel
  - [`database/GM23.sql`](WindowsFormsAppGM23/database/GM23.sql) : définition et données de la base GM23



## Dépannage
- Erreur de connexion SQL : vérifiez l’instance SQL Server, l’authentification (Windows/SQL), et la chaîne de connexion dans `App.config`.
- Droits d’accès BD : l’utilisateur doit avoir les droits de lecture/écriture sur la base `GM23`.
- Version .NET : assurez-vous d’avoir le .NET Framework 4.8 installé.

