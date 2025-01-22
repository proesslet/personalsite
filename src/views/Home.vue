<template>
  <div class="home">
    <div class="hero">
      <h1>Welcome!</h1>
      <div class="intro">
        <h2>Full Stack Developer</h2>
        <p>
          Hi, I'm a passionate developer focused on creating elegant solutions
          to complex problems.
        </p>
      </div>
      <div class="cta-buttons">
        <router-link to="/projects" class="cta-button primary"
          >View Projects</router-link
        >
        <router-link to="/resume" class="cta-button secondary"
          >See Resume</router-link
        >
      </div>
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.home {
  min-height: calc(100vh - var(--nav-height));
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 2rem;
}

.hero {
  text-align: center;
  max-width: 800px;
}

h1 {
  font-size: 4rem;
  margin-bottom: 1rem;
  background: linear-gradient(120deg, var(--accent), #64ffda);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.intro {
  margin-top: 2rem;
}

h2 {
  font-size: 2rem;
  color: var(--text-secondary);
  margin-bottom: 1rem;
}

p {
  color: var(--text-secondary);
  font-size: 1.2rem;
  max-width: 600px;
  margin: 0 auto;
}

.cta-buttons {
  margin-top: 3rem;
  display: flex;
  gap: 1.5rem;
  justify-content: center;
}

.cta-button {
  padding: 0.8rem 2rem;
  border-radius: 8px;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.3s ease;
}

.cta-button.primary {
  background: var(--accent);
  color: var(--text-primary);
}

.cta-button.primary:hover {
  background: var(--accent-hover);
  transform: translateY(-2px);
}

.cta-button.secondary {
  background: transparent;
  color: var(--text-primary);
  border: 2px solid var(--accent);
}

.cta-button.secondary:hover {
  background: rgba(66, 184, 131, 0.1);
  transform: translateY(-2px);
}

/* Responsive Design */
@media (max-width: 768px) {
  .home {
    padding: 1rem;
  }

  h1 {
    font-size: 3rem;
  }

  h2 {
    font-size: 1.5rem;
  }

  p {
    font-size: 1rem;
  }

  .cta-buttons {
    flex-direction: column;
    gap: 1rem;
  }

  .cta-button {
    width: 100%;
    text-align: center;
  }
}
</style>
