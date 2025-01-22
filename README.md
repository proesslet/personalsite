# Preston Roesslet's Personal Website

A modern, responsive personal website built with Vue.js showcasing my portfolio, experience, and skills. The site features a clean, minimalist design with smooth animations and a dark theme.

## Features

- 🏠 **Home Page**: Introduction and overview
- 👨‍💻 **About Page**: Detailed background, skills, and interests
- 💼 **Projects Page**: Showcase of key projects with live demos and source code links
- 📄 **Resume Page**: Interactive resume with downloadable PDF version

## Tech Stack

- **Frontend**: Vue 3, Vue Router
- **Styling**: Custom CSS with CSS Variables for theming
- **Deployment**: Docker + Traefik
- **CI/CD**: Manual deployment via custom deploy script

## Local Development

1. Clone the repository:

```bash
git clone https://github.com/proesslet/personalsite.git
cd personalsite
```

2. Install dependencies:

```bash
npm install
```

3. Start the development server:

```bash
npm run dev
```

4. Visit `http://localhost:5173` in your browser

## Building for Production

1. Build the project:

```bash
npm run build
```

2. Build and deploy using Docker:

```bash
./deploy.sh
```

## Project Structure

```
personalsite/
├── src/
│   ├── assets/      # Static assets
│   ├── components/  # Vue components
│   ├── views/       # Page components
│   ├── App.vue      # Root component
│   ├── main.js      # Entry point
│   └── router/      # Vue Router configuration
├── public/          # Public static files
├── Dockerfile       # Docker configuration
├── deploy.sh        # Deployment script
└── index.html       # HTML entry point
```

## Deployment

The site is deployed using Docker and Traefik for reverse proxy and SSL termination. The deployment process is handled by a custom bash script (`deploy.sh`) that:

1. Builds the Docker image
2. Transfers it to the production server
3. Updates the running container
4. Configures Traefik routing

## Contact

- Email: proesslet@gmail.com
- GitHub: [@proesslet](https://github.com/proesslet)
- LinkedIn: [preston-roesslet](https://linkedin.com/in/preston-roesslet)
- Twitter: [@prestonroesslet](https://twitter.com/prestonroesslet)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
