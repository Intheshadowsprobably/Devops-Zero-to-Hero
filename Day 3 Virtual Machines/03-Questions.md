# Day 3: Common Questions & Scenarios

## 🎥 Instructor’s Note
> *"If you have any questions, put them in the comment section. I’ll come live once in a week to answer questions that I’m not able to answer through the comment section."*

## ❓ Key Questions from the Video Context

### 1. Why is Virtualization considered "Overhyped" or "Essential"?
- **Context:** The instructor asks if VMs are overhyped.
- **Answer from Video:** They are not overhyped; they are critical for **efficiency**. Without virtualization, companies like AWS could only serve 100 users with 100 physical servers. With VMs, they serve millions by sharing hardware.
- **Follow-up:** How do we measure this efficiency in a real corporate environment?

### 2. Physical Access vs. Logical Access
- **Scenario:** If I pay AWS $100 for a VM, can I go to their data center in Mumbai/Singapore and physically touch the server?
- **Answer:** **No.** You only get:
  - IP Address
  - Key Pair (SSH/Private Key)
  - Remote Logical Access
- **Why?** Security and abstraction. The cloud provider manages the physical infrastructure; you manage the virtual instance.

### 3. Latency and Region Selection
- **Question:** Why does AWS have data centers in specific regions (e.g., Mumbai vs. Ohio)?
- **Answer:** To reduce **Latency**.
  - If you are in India, a VM in Mumbai is faster than one in Ohio.
  - **DevOps Insight:** Always deploy resources in the region closest to your target audience to improve performance.

### 4. Hypervisor Examples
- **Question:** What are the popular hypervisors mentioned?
- **Answer:**
  - **VMware** (Enterprise standard)
  - **Xen** (Open source, used by AWS)
  - **Hyper-V** (Microsoft)
- **Note:** Cloud providers often use proprietary hypervisors (like AWS Nitro) optimized for their hardware.

### 5. Can I run VMs on my Laptop?
- **Scenario:** The instructor mentions Oracle VirtualBox.
- **Answer:** Yes. You can install VirtualBox on your personal laptop to create VMs for learning/testing. You can even share this VM with family members on the same Wi-Fi (though not recommended for production).

---

## 📝 Questions for the Weekly Live Session
*(Post these in the comments if you need clarification)*

1. [ ] **Resource Overcommitment:** If a physical server has 100GB RAM, can I create 10 VMs each with 20GB RAM? (Answer: Yes, due to statistical usage patterns, but what happens if all VMs hit max RAM simultaneously?)
2. [ ] **VM Migration:** If Physical Server P100 fails, what happens to my VM? (Live Migration/HA concepts).
3. [ ] **Cost Optimization:** How do DevOps engineers decide when to use a VM vs. Container (Docker)? (Hint: Containers are lighter but VMs provide stronger isolation).
4. [ ] **Security:** If VM1 is hacked, can it affect VM2 on the same physical host? (Isolation strength of the Hypervisor).

---

## 🔗 Next Steps
- **Day 4:** Live Demo on AWS (Creating an EC2 Instance).
- **Homework:** Watch Day 1 and Day 2 videos if missed.
- **Action:** Subscribe to the channel and share with peers.
