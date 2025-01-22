<template>
  <div class="projects">
    <h1>My Projects</h1>
    <div class="project-grid">
      <div class="project-card">
        <div class="project-header">
          <h3>Oklahoma Weather Lab</h3>
          <div class="project-links">
            <a href="https://owl.ou.edu" target="_blank" class="project-link">
              <i>🔗</i> Live Demo
            </a>
          </div>
        </div>
        <p>
          The website for the Oklahoma Weather Lab consists of text based
          forecast discussions, an attendance system, and various admin tools.
          It was developed using Vue.js, Node.js, and MySql.
        </p>
        <p>
          When development first started, we had an old PHP website that was not
          well maintained. I led the initial development of the new website, and
          worked with other members to ensure we built an accessible and
          functional website that met the needs of the lab.
        </p>
        <p>There are 2 main features that I was responsible for:</p>
        <ul>
          <li>
            The attendance system, which allows the lab to track the attendance
            of students and staff.
          </li>
          <li>
            The text based forecast discussions, which allows members to write
            forecast discussions mirroring what is done at the National Weather
            Service.
          </li>
        </ul>
        <div class="technologies">
          <span class="tech-tag">Vue</span>
          <span class="tech-tag">MySql</span>
          <span class="tech-tag">Node.js</span>
        </div>
      </div>
      <div class="project-card">
        <div class="project-header">
          <h3>Nixa Amateur Radio Club Website</h3>
          <div class="project-links">
            <a href="https://nixahams.net" target="_blank" class="project-link">
              <i>🔗</i> Live Demo
            </a>
            <a
              href="https://github.com/nixahams/nixahams-website"
              target="_blank"
              class="project-link"
            >
              <i>📂</i> Source
            </a>
          </div>
        </div>
        <p>
          A modern website for the Nixa Amateur Radio Club featuring user
          authentication, event management, and automated ticket sales. The site
          serves as a central hub for club activities and member engagement.
        </p>
        <p>
          The project was built to modernize the club's online presence and
          streamline various administrative tasks. It includes several key
          features that have significantly improved the club's operations.
        </p>
        <p>Key features include:</p>
        <ul>
          <li>Secure member access through LDAP-like authentication</li>
          <li>Event management and automated ticket sales through Stripe</li>
          <li>Member directory and communication tools</li>
          <li>Automated deployment pipeline for seamless updates</li>
        </ul>
        <div class="technologies">
          <span class="tech-tag">Vue</span>
          <span class="tech-tag">Node.js</span>
          <span class="tech-tag">Azure</span>
          <span class="tech-tag">Stripe</span>
          <span class="tech-tag">GitHub Actions</span>
        </div>
      </div>
      <!-- Add more project cards here -->
    </div>
  </div>
</template>

<script setup></script>

<style scoped>
.projects {
  width: 100%;
  padding: 0;
}

h1 {
  font-size: 3rem;
  margin-bottom: 2rem;
  background: linear-gradient(120deg, var(--accent), #64ffda);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.project-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(min(100%, 500px), 1fr));
  gap: 2.5rem;
  margin-top: 2.5rem;
}

.project-card {
  background: var(--bg-secondary);
  border-radius: 12px;
  padding: 2rem;
  transition: all 0.3s ease;
  border: 1px solid rgba(255, 255, 255, 0.1);
  display: flex;
  flex-direction: column;
  gap: 1.25rem;
  text-align: left;
  height: 100%;
}

.project-card:hover {
  transform: translateY(-5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.project-header {
  display: flex;
  justify-content: space-between;
  align-items: flex-start;
  margin-bottom: 0;
  gap: 1rem;
}

.project-header h3 {
  font-size: 1.75rem;
  color: var(--text-primary);
  margin: 0;
  font-weight: 600;
  letter-spacing: -0.02em;
  line-height: 1.3;
  flex: 1;
}

.project-links {
  display: flex;
  gap: 1rem;
  flex-shrink: 0;
  padding-top: 0.25rem;
}

.project-link {
  color: var(--text-secondary);
  text-decoration: none;
  font-size: 0.9rem;
  transition: all 0.3s;
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 0.75rem;
  border-radius: 6px;
  background: rgba(66, 184, 131, 0.1);
}

.project-link:hover {
  color: var(--accent);
  background: rgba(66, 184, 131, 0.2);
}

.project-card p {
  color: var(--text-secondary);
  line-height: 1.7;
  font-size: 1rem;
  margin: 0;
}

.project-card ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

.project-card li {
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
  line-height: 1.7;
  position: relative;
  padding-left: 1.5rem;
}

.project-card li:last-child {
  margin-bottom: 0;
}

.project-card li::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0.75rem;
  width: 6px;
  height: 6px;
  background-color: var(--accent);
  border-radius: 50%;
  opacity: 0.8;
  transform: translateY(-50%);
}

.technologies {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  padding-top: 1rem;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
  margin-top: auto;
}

.tech-tag {
  background: rgba(66, 184, 131, 0.1);
  color: var(--accent);
  padding: 0.35rem 0.85rem;
  border-radius: 20px;
  font-size: 0.875rem;
  letter-spacing: 0.02em;
  font-weight: 500;
  border: 1px solid rgba(66, 184, 131, 0.3);
  transition: all 0.3s ease;
}

.tech-tag:hover {
  background: rgba(66, 184, 131, 0.2);
  transform: translateY(-2px);
}

/* Mobile styles */
@media (max-width: 768px) {
  h1 {
    font-size: 2.5rem;
    margin-bottom: 1.5rem;
  }

  .project-grid {
    gap: 2rem;
    margin-top: 2rem;
  }

  .project-card {
    padding: 1.5rem;
  }

  .project-header {
    flex-direction: column;
    align-items: flex-start;
    gap: 1rem;
  }

  .project-header h3 {
    font-size: 1.5rem;
  }

  .project-links {
    width: 100%;
  }
}

/* Small mobile devices */
@media (max-width: 480px) {
  h1 {
    font-size: 2rem;
  }

  .project-card {
    padding: 1.25rem;
  }

  .project-header h3 {
    font-size: 1.35rem;
  }

  .project-link {
    padding: 0.4rem 0.6rem;
    font-size: 0.85rem;
  }

  .tech-tag {
    padding: 0.25rem 0.75rem;
    font-size: 0.8rem;
  }
}
</style>
