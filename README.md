# StudentHub
The "Student Hub" app, version 1.0, enhances college students' academic and social experiences by integrating discussions, event promotions, academic resources, and personal content into a single, user-friendly platform. This innovative, standalone application unifies features typically spread across multiple apps.

## Setup Instructions

1. **Create a New Flutter Project**
    ```sh
    flutter create student_hub
    cd student_hub
    ```

2. **Copy Files from the GitHub Repository**
    - Copy the files from the `lib` folder in the provided GitHub link into your project's `lib` folder.

3. **Update `pubspec.yaml`**
    - Compare the `pubspec.yaml` file from the provided GitHub link and update your `pubspec.yaml` with the necessary dependencies and configurations.

4. **Create Assets Folder**
    - In the root directory of the project, create an `assets` folder:
    ```sh
    mkdir assets
    ```
    add the files in the github link's assets folder to your assets folder

5. **Integrate Firebase Using CLI**
    - Follow the instructions to integrate Firebase using the Firebase CLI:
    ```sh
    # Install Firebase CLI if you haven't already
    npm install -g firebase-tools

    # Login to Firebase
    firebase login

    # Choose the project in your firebase console
    flutterfire configure
    ```
   

## Additional Information
For further details on using and configuring the application, please refer to the documentation in the repository.
