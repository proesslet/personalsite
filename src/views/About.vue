<template>
  <div class="about">
    <h1>About Me</h1>

    <div class="about-content">
      <div class="bio-section">
        <h2>Hi, I'm Preston 👋</h2>
        <p>
          I'm a Full Stack Software Developer at O'Reilly Auto Parts, where I
          work on building and maintaining enterprise-scale applications. My
          focus is on creating efficient, user-friendly solutions that make a
          real impact.
        </p>
        <p>
          I graduated from the University of Oklahoma with a B.S. in Computer
          Science. During my time there, I served as the Director of Development
          for the Oklahoma Weather Lab and worked as a Web Developer at the
          Cooperative Institute for Severe and High-Impact Weather Research and
          Operations (CIWRO). These experiences taught me the value of building
          robust, scalable applications that serve critical needs.
        </p>
        <p>
          Beyond software development, I have a deep interest in hardware and
          communications technology. I enjoy tinkering with Arduino projects and
          exploring the world of amateur radio as a licensed ham operator. I'm
          passionate about using both my software expertise and technical
          hobbies to volunteer in my community and help others solve problems.
        </p>
      </div>

      <div class="skills-section">
        <h2>Skills & Technologies</h2>
        <div class="skills-grid">
          <div class="skill-category">
            <h3>Backend</h3>
            <ul>
              <li>Java</li>
              <li>Spring Framework</li>
              <li>Express.js</li>
              <li>RESTful APIs</li>
            </ul>
          </div>

          <div class="skill-category">
            <h3>Frontend</h3>
            <ul>
              <li>JavaScript</li>
              <li>Vue.js</li>
              <li>HTML/CSS</li>
              <li>Responsive Design</li>
            </ul>
          </div>

          <div class="skill-category">
            <h3>Database</h3>
            <ul>
              <li>SQL</li>
              <li>Database Design</li>
              <li>Query Optimization</li>
              <li>Data Modeling</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
.about {
  width: 100%;
}

h1 {
  font-size: 3rem;
  margin-bottom: 2rem;
  background: linear-gradient(120deg, var(--accent), #64ffda);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.about-content {
  display: flex;
  flex-direction: column;
  gap: 3rem;
}

.bio-section h2,
.skills-section h2 {
  font-size: 2rem;
  color: var(--text-primary);
  margin-bottom: 1.5rem;
}

.bio-section p {
  color: var(--text-secondary);
  line-height: 1.8;
  font-size: 1.1rem;
  margin-bottom: 1.5rem;
}

.bio-section p:last-child {
  margin-bottom: 0;
}

.skills-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.skill-category {
  background: var(--bg-secondary);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;
}

.skill-category:hover {
  transform: translateY(-5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.skill-category h3 {
  color: var(--accent);
  font-size: 1.25rem;
  margin-bottom: 1rem;
  position: relative;
}

.skill-category h3::after {
  content: "";
  position: absolute;
  bottom: -0.5rem;
  left: 0;
  width: 2rem;
  height: 2px;
  background: var(--accent);
}

.skill-category ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.skill-category li {
  color: var(--text-secondary);
  margin-bottom: 0.5rem;
  padding-left: 1.5rem;
  position: relative;
  line-height: 1.6;
}

.skill-category li::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0.7rem;
  width: 6px;
  height: 6px;
  background-color: var(--accent);
  border-radius: 50%;
  opacity: 0.8;
  transform: translateY(-50%);
}

/* Mobile styles */
@media (max-width: 768px) {
  h1 {
    font-size: 2.5rem;
    margin-bottom: 1.5rem;
  }

  .bio-section h2,
  .skills-section h2 {
    font-size: 1.75rem;
  }

  .bio-section p {
    font-size: 1rem;
  }

  .skills-grid {
    gap: 1.5rem;
  }

  .skill-category {
    padding: 1.25rem;
  }
}

/* Small mobile devices */
@media (max-width: 480px) {
  h1 {
    font-size: 2rem;
  }

  .bio-section h2,
  .skills-section h2 {
    font-size: 1.5rem;
  }

  .skills-grid {
    grid-template-columns: 1fr;
    gap: 1rem;
  }
}

/* Remove the interests-related styles */
.interests-title,
.interests-description {
  display: none;
}
</style>
