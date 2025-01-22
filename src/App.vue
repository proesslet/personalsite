<script setup>
// Remove unused import
</script>

<template>
  <div class="app">
    <nav class="navbar">
      <div class="nav-content">
        <router-link to="/" class="nav-brand">Preston Roesslet</router-link>
        <div class="nav-links">
          <router-link to="/">Home</router-link>
          <router-link to="/about">About</router-link>
          <router-link to="/projects">Projects</router-link>
          <router-link to="/resume">Resume</router-link>
        </div>
      </div>
    </nav>

    <main>
      <router-view></router-view>
    </main>

    <footer>
      <div class="footer-content">
        <div class="footer-section">
          <h3>Contact</h3>
          <p>Email: proesslet@gmail.com</p>
        </div>

        <div class="footer-section">
          <h3>Connect</h3>
          <div class="social-links">
            <a href="https://github.com/proesslet" target="_blank">GitHub</a>
            <a href="https://linkedin.com/in/preston-roesslet" target="_blank"
              >LinkedIn</a
            >
            <a href="https://twitter.com/prestonroesslet" target="_blank"
              >Twitter</a
            >
          </div>
        </div>

        <div class="footer-section">
          <h3>Quick Links</h3>
          <nav class="footer-nav">
            <router-link to="/">Home</router-link>
            <router-link to="/projects">Projects</router-link>
            <router-link to="/resume">Resume</router-link>
          </nav>
        </div>
      </div>
      <div class="footer-bottom">
        <p class="copyright">
          © {{ new Date().getFullYear() }} Preston Roesslet. All rights
          reserved.
        </p>
      </div>
    </footer>
  </div>
</template>

<style>
:root {
  --bg-primary: #121212;
  --bg-secondary: #1e1e1e;
  --text-primary: #ffffff;
  --text-secondary: #b3b3b3;
  --accent: #42b883;
  --accent-hover: #3aa876;
  --nav-height: 4rem;
  --container-padding: 4rem;
  --mobile-padding: 1.5rem;
}

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html,
body {
  margin: 0;
  padding: 0;
  width: 100%;
  overflow-x: hidden;
  background: var(--bg-primary);
}

body {
  font-family: "Inter", Arial, sans-serif;
  line-height: 1.6;
  color: var(--text-primary);
  min-height: 100vh;
  position: relative;
}

.app {
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  width: 100%;
  position: relative;
}

.navbar {
  background: var(--bg-secondary);
  height: var(--nav-height);
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  z-index: 1000;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.3);
}

.nav-content {
  max-width: 1200px;
  margin: 0 auto;
  height: 100%;
  padding: 0 var(--container-padding);
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.nav-brand {
  font-size: 1.5rem;
  font-weight: bold;
  text-decoration: none;
  color: var(--text-primary);
  white-space: nowrap;
}

.nav-links {
  display: flex;
  gap: 2rem;
}

.nav-links a {
  text-decoration: none;
  color: var(--text-secondary);
  font-weight: 500;
  transition: color 0.3s;
}

.nav-links a:hover,
.nav-links a.router-link-active {
  color: var(--accent);
}

main {
  flex: 1;
  margin-top: var(--nav-height);
  width: 100%;
  max-width: 1200px;
  margin-left: auto;
  margin-right: auto;
  padding: 2rem var(--container-padding);
  min-height: calc(100vh - var(--nav-height));
}

footer {
  background: var(--bg-secondary);
  color: var(--text-primary);
  width: 100vw;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  margin-top: auto;
  display: flex;
  flex-direction: column;
  align-items: stretch;
}

.footer-content {
  max-width: 1200px;
  margin: 0 auto;
  padding: 4rem var(--container-padding);
  display: flex;
  justify-content: space-between;
  gap: 2rem;
}

.footer-section {
  flex: 1;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

.footer-section h3 {
  color: var(--accent);
  font-size: 1.2rem;
  margin-bottom: 1rem;
  position: relative;
}

.footer-section h3::after {
  content: "";
  position: absolute;
  bottom: -0.5rem;
  left: 50%;
  transform: translateX(-50%);
  width: 2rem;
  height: 2px;
  background: var(--accent);
}

.footer-section p,
.footer-section a {
  color: var(--text-secondary);
  text-decoration: none;
  text-align: center;
  margin-bottom: 0.5rem;
  transition: color 0.3s;
}

.social-links,
.footer-nav {
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 0.5rem;
}

.footer-section a:hover {
  color: var(--accent);
}

.footer-bottom {
  width: 100%;
  text-align: center;
  padding: 1.5rem;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  background: rgba(0, 0, 0, 0.2);
}

.copyright {
  color: var(--text-secondary);
  font-size: 0.9rem;
}

/* Enhanced Mobile Responsiveness */
@media (max-width: 768px) {
  :root {
    --container-padding: var(--mobile-padding);
  }

  .nav-content {
    padding: 0 var(--mobile-padding);
  }

  .nav-brand {
    font-size: 1.25rem;
  }

  .nav-links {
    gap: 1rem;
  }

  .nav-links a {
    font-size: 0.9rem;
  }

  main {
    padding: 1.5rem var(--mobile-padding);
  }

  .footer-content {
    flex-direction: column;
    padding: 2rem var(--mobile-padding);
    gap: 2rem;
  }

  .footer-section {
    text-align: center;
  }
}

/* Small mobile devices */
@media (max-width: 480px) {
  .nav-content {
    flex-direction: column;
    height: auto;
    padding: 1rem var(--mobile-padding);
  }

  .navbar {
    height: auto;
  }

  .nav-links {
    margin-top: 0.5rem;
    justify-content: center;
    width: 100%;
  }

  main {
    margin-top: calc(var(--nav-height) + 2rem);
  }
}
</style>
