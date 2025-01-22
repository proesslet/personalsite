<template>
  <div class="resume">
    <div class="resume-header">
      <h1>Resume</h1>
      <div class="contact-info">
        <a href="mailto:proesslet@gmail.com" class="contact-link">
          <i class="fas fa-envelope"></i>
          proesslet@gmail.com
        </a>
        <a href="tel:(417)-350-2789" class="contact-link">
          <i class="fas fa-phone"></i>
          (417)-350-2789
        </a>
        <a
          href="https://github.com/proesslet"
          target="_blank"
          class="contact-link"
        >
          <i class="fab fa-github"></i>
          github.com/proesslet
        </a>
      </div>
      <a :href="resumePDF" target="_blank" class="download-btn">
        <span>View PDF</span>
        <i class="fas fa-external-link-alt"></i>
      </a>
    </div>

    <div class="resume-content">
      <section class="education-section">
        <h2>Education</h2>
        <div class="education-card">
          <h3>BS in Computer Science</h3>
          <div class="subtitle">
            <span class="school">University of Oklahoma</span>
            <span class="duration">December 2024</span>
          </div>
        </div>
      </section>

      <section class="experience-section">
        <h2>Experience</h2>
        <div class="timeline">
          <div class="timeline-item">
            <div class="timeline-marker"></div>
            <div class="timeline-content">
              <h3>Software Developer I</h3>
              <div class="subtitle">
                <span class="company">O'Reilly Auto Parts - Remote</span>
                <span class="duration">May 2024 - Present</span>
              </div>
              <ul class="responsibilities">
                <li>
                  Redesigned email batching logic, improving processing
                  efficiency
                </li>
                <li>
                  Led the development of a new store signage printing system,
                  enhancing visual consistency across all 6,000+ stores
                </li>
                <li>
                  Deployed a new database structure on an IBM iSeries/AS400
                  System
                </li>
                <li>
                  Ensured software quality by communicating with QA to fix any
                  bugs
                </li>
              </ul>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-marker"></div>
            <div class="timeline-content">
              <h3>Jr. Software Developer</h3>
              <div class="subtitle">
                <span class="company">O'Reilly Auto Parts - Remote</span>
                <span class="duration">August 2023 - May 2024</span>
              </div>
              <ul class="responsibilities">
                <li>
                  Utilized Jira, Bitbucket, and Confluence for project
                  management and collaboration
                </li>
                <li>
                  Communicated with a large team of developers to fulfill
                  business requirements in an efficient manner
                </li>
              </ul>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-marker"></div>
            <div class="timeline-content">
              <h3>Software Development Intern</h3>
              <div class="subtitle">
                <span class="company"
                  >O'Reilly Auto Parts - Springfield, MO</span
                >
                <span class="duration">May 2023 - August 2023</span>
              </div>
              <ul class="responsibilities">
                <li>
                  Learned full-stack development using the Java Spring Boot
                  framework
                </li>
                <li>Learned database design and management using SQL</li>
                <li>
                  Enhanced proficiency in HTML, Javascript, and CSS including
                  Bootstrap and one of O'Reilly's Javascript frameworks
                </li>
              </ul>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-marker"></div>
            <div class="timeline-content">
              <h3>Director of Development</h3>
              <div class="subtitle">
                <span class="company">Oklahoma Weather Lab - Norman, OK</span>
                <span class="duration">May 2021 - June 2024</span>
              </div>
              <ul class="responsibilities">
                <li>
                  Led the development of a text based forecast discussion
                  system, increasing lab efficiency and enhancing the user
                  experience
                </li>
                <li>
                  Oversaw the operation of the Hub of OWL Operational Technology
                  (HOOT)
                </li>
                <li>
                  Supported HOOT team members with development tasks by leading
                  workshops and presentations
                </li>
                <li>
                  Increased overall user experience by redesigning the website
                  using Vue
                </li>
              </ul>
            </div>
          </div>

          <div class="timeline-item">
            <div class="timeline-marker"></div>
            <div class="timeline-content">
              <h3>Full-Stack Web Developer</h3>
              <div class="subtitle">
                <span class="company">CIWRO - Norman, OK</span>
                <span class="duration">December 2021 - May 2024</span>
              </div>
              <ul class="responsibilities">
                <li>
                  Developed and maintained the internal website for CIWRO
                  employees
                </li>
                <li>Developed and maintained the public facing website</li>
                <li>
                  Designed a new outreach page to increase community engagement
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <section class="skills-section">
        <h2>Skills</h2>
        <div class="skills-grid">
          <div class="skill-category">
            <h3>Languages</h3>
            <p>Java, Javascript, Typescript, Python, SQL, C++</p>
          </div>
          <div class="skill-category">
            <h3>Technologies</h3>
            <p>
              Vue, Spring Boot, Git, MySQL, Docker, Unix command line, Bootstrap
            </p>
          </div>
          <div class="skill-category">
            <h3>Tools</h3>
            <p>VS Code, IntelliJ IDEA, Eclipse IDE, IBM ISeries/AS400</p>
          </div>
        </div>
      </section>

      <section class="certifications-section">
        <h2>Certifications</h2>
        <div class="certifications-grid">
          <div class="certification-item">
            <h3>Cybersecurity Fundamentals</h3>
            <span class="issuer">Google</span>
          </div>
          <div class="certification-item">
            <h3>Technical Support Fundamentals</h3>
            <span class="issuer">Google</span>
          </div>
        </div>
      </section>

      <section class="groups-section">
        <h2>Groups and Organizations</h2>
        <ul class="groups-list">
          <li>
            <span class="org-name"
              >Student Association for Computing Machinery</span
            >
            <span class="org-affiliation">University of Oklahoma</span>
          </li>
          <li>
            <span class="org-name">Oklahoma Weather Lab</span>
            <span class="org-affiliation">University of Oklahoma</span>
          </li>
          <li>
            <span class="org-name">Student Chapter of AMS and NWA</span>
            <span class="org-affiliation">University of Oklahoma</span>
          </li>
        </ul>
      </section>
    </div>
  </div>
</template>

<script setup>
import resumePDF from "../assets/Resume - Preston Roesslet.pdf";
</script>

<style scoped>
.resume {
  width: 100%;
  max-width: 1200px;
  margin: 0 auto;
}

.resume-header {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 3rem;
}

h1 {
  font-size: 3rem;
  background: linear-gradient(120deg, var(--accent), #64ffda);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

.download-btn {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.75rem 1.5rem;
  background: var(--accent);
  color: var(--bg-primary);
  border-radius: 8px;
  text-decoration: none;
  font-weight: 600;
  transition: all 0.3s ease;
}

.download-btn:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.2);
}

.resume-content {
  display: flex;
  flex-direction: column;
  gap: 4rem;
}

section h2 {
  font-size: 2rem;
  color: var(--text-primary);
  margin-bottom: 2rem;
}

.timeline {
  position: relative;
  padding-left: 2rem;
}

.timeline::before {
  content: "";
  position: absolute;
  left: 0;
  top: 0;
  bottom: 0;
  width: 2px;
  background: var(--accent);
  opacity: 0.3;
}

.timeline-item {
  position: relative;
  padding-bottom: 3rem;
}

.timeline-marker {
  position: absolute;
  left: -2rem;
  width: 1rem;
  height: 1rem;
  background: var(--accent);
  border-radius: 50%;
  transform: translateX(50%);
}

.timeline-content,
.education-card,
.skill-category,
.certification-item,
.groups-list li {
  background: var(--bg-secondary);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;
  text-align: left;
}

.timeline-content:hover,
.education-card:hover,
.skill-category:hover,
.certification-item:hover,
.groups-list li:hover {
  transform: translateY(-5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.responsibilities,
.skill-category p,
.certification-item .issuer,
.org-affiliation {
  margin: 0.5rem 0 0 0;
  line-height: 1.6;
}

.subtitle {
  display: flex;
  justify-content: space-between;
  color: var(--accent);
  margin: 0.25rem 0 0.75rem 0;
  font-size: 0.9rem;
}

section {
  margin-bottom: 2rem;
}

section:last-child {
  margin-bottom: 0;
}

.timeline-content h3,
.skill-category h3,
.certification-item h3 {
  margin: 0;
  color: var(--text-primary);
}

.education-card {
  background: var(--bg-secondary);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;
}

.education-card:hover {
  transform: translateY(-5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.contact-info {
  display: flex;
  gap: 1.5rem;
  margin: 1rem 0;
}

.contact-link {
  display: flex;
  align-items: center;
  gap: 0.5rem;
  color: var(--text-secondary);
  text-decoration: none;
  transition: color 0.3s ease;
}

.contact-link:hover {
  color: var(--accent);
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

.certifications-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 2rem;
}

.certification-item {
  background: var(--bg-secondary);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  transition: all 0.3s ease;
}

.certification-item:hover {
  transform: translateY(-5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.issuer {
  color: var(--accent);
  font-size: 0.9rem;
}

.groups-list {
  list-style: none;
  padding: 0;
}

.groups-list li {
  background: var(--bg-secondary);
  padding: 1.5rem;
  border-radius: 12px;
  border: 1px solid rgba(255, 255, 255, 0.1);
  margin-bottom: 1rem;
  display: flex;
  justify-content: space-between;
  align-items: center;
  transition: all 0.3s ease;
}

.groups-list li:hover {
  transform: translateX(5px);
  border-color: rgba(66, 184, 131, 0.3);
  box-shadow: 0 4px 20px rgba(66, 184, 131, 0.1);
}

.org-name {
  color: var(--text-primary);
  font-weight: 600;
}

.org-affiliation {
  color: var(--accent);
  font-size: 0.9rem;
}

@media (max-width: 768px) {
  .resume-header {
    flex-direction: column;
    gap: 1rem;
    align-items: flex-start;
  }

  h1 {
    font-size: 2.5rem;
  }

  section h2 {
    font-size: 1.75rem;
  }

  .timeline-content h3 {
    font-size: 1.25rem;
  }

  .subtitle {
    flex-direction: column;
    gap: 0.25rem;
  }

  .contact-info {
    flex-direction: column;
    gap: 0.75rem;
  }

  .groups-list li {
    flex-direction: column;
    align-items: flex-start;
    gap: 0.5rem;
  }
}

@media (max-width: 480px) {
  h1 {
    font-size: 2rem;
  }

  .timeline {
    padding-left: 1.5rem;
  }

  .timeline-marker {
    left: -1.5rem;
  }

  .timeline-content {
    padding: 1rem;
  }
}
</style>
