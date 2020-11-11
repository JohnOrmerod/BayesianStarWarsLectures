
---
  
  class: segue

.white[
  
  # Bayes theorem machinary 
  
  ]


---
  
  ### Bayes theorem for discrete distributions
  
  .small[
    
    Suppose that we have two events $A$ and $B$ and 
    
    * $P(B=b|A=a)$
      
      * $P(A=a)$
      
      * $A$ can take the values $a_1,\ldots,a_K$.
    
    suppose that we want to find $P(A=a|B=b)$.
    
    Bayes theorem
    $$
      P(A=a|B=b) = \frac{P(B=b|A=a)P(A=a)}{P(B=b)}
    $$
      
      where the total probability for $B=b$ is obtained by summing up all possibilities of
    values $A$ can take, i.e.,
    
    $$P(B=b)=\sum_{k=1}^KP(B=b|A=a_k)P(A=a_k)=\sum_{k=1}^KP(B=b,A=a_k)$$
      
      ]

---
  
  ### From two events to three
  
  .small[ 
    
    Suppose that we have two events $A$, $B$ and $C$ and that 
    
    * $P(B=b|A=a)$
      
      * $P(C=c|A=a)$
      
      * $P(A=a)$
      
      * $A$ can take the values $a_1,\ldots,a_K$.
    
    suppose that we want to find $P(A=a|B=b,C=c)$.
    
    Bayes theorem
    $$
      P(A=a|B=b,C=c) = \frac{P(B=b|A=a) P(C=c|A=a)P(A=a)}{P(B=b,C=c)}
    $$
      
      where the total probability for $B=b$ and $C=c$ is obtained by summing up all possibilities of
    values $A$ can take, i.e.,
    
    $$P(B=b,C=c)=\sum_{k=1}^KP(B=b|A=a_k)P(C=c|A=a_k)P(A=a_k)=\sum_{k=1}^KP(A=a_k,B=b,C=c)$$
      
      ]

---
  
  ### From discrete to continuous parameters
  
  .small[ 
    
    Suppose that we have two events $A$, $B$ and $C$ and that  we have three densities
    
    * $p(b|a)$
      
      * $p(c|a)$
      
      * $p(a)$
      
      * $a$ can take the all values in the set $\mathcal{A}$.
    
    Suppose that we want to find $p(a|b,c)$.
    
    Using Bayes theorem we have
    $$
      p(a|b,c) = \frac{p(b|a)p(c|a)p(a)}{p(b,c)}
    $$
      
      where the density $p(b,c)$ is obtained by integrating over all values $A$ can take, i.e.,
    
    $$p(b,c)= \int_{a\in\mathcal{A}}p(b|a)p(c|a)p(a)da= \int_{a\in\mathcal{A}}p(a,b,c)da$$
      
      ]

---
  
  class: segue

.white[
  
  # Bayesian inference as learning from data
  
  ]

---
  
  
  .pull-left-2[
    
    ### Posterior update formula
    
    .small[
      
      Let $\vx_n = (x_1,\ldots,x_n)$ be the data after collecting $n$ samples.
      Let $p(x_1|\theta)$ denote a single sample and $p(\theta)$ be the prior.
      The posterior after collecting $n=0$ samples is
      
      \begin{align}
      p(\theta| \vx_{\emptyset}) 
      & = \frac{ \prod_{i\in \emptyset} p(x_i|\theta) p(\theta)  }{ 
        \int \prod_{i\in \emptyset} p(x_i|\theta) p(\theta)  d\theta } = p(\theta).
      \end{align}
      
      
      That is after collecting zero samples the "posterior distribution"
      simplifies to the prior distribution. After collecting one sample
      \begin{align}
      \ds p(\theta|x_1) 
      & = \frac{\ds  p(x_1|\theta) p(\theta) }{\ds \int p(x_1|\theta) p(\theta) d\theta }
      \\
      & = \frac{\ds p(x_1|\theta) p(\theta| \vx_{\emptyset})  }{\ds  \int p(x_1|\theta) p(\theta| \vx_{\emptyset})  d\theta }
      \end{align}
      ]
    
    ]



---
  
  
  
  
  
  .pull-left-2[
    
    ### Posterior update formula
    
    Note that
    \begin{align}
    \ds p(\theta|\vx_{n+1}) 
    & = \frac{\ds  p(x_{n+1}|\theta) p(\theta|\vx_n) }{\ds \int p(x_{n+1}|\theta) p(\theta|\vx_n) d\theta }
    \\
    & = \frac{\ds  p(x_{n+1}|\theta) p(\vx_n|\theta)p(\theta)/p(\vx_n) }{\ds \int p(x_{n+1}|\theta) p(\vx_n|\theta)p(\theta)/p(\vx_n) d\theta }
    \\
    & = \frac{\ds p(\vx_{n+1},\theta) }{\ds  \int p(\vx_{n+1},\theta) d\theta }
    \end{align}
    
    
    which implies that the posterior for $\theta$ when using $n+1$ samples
    can be obtained by treating $p(x_{n+1}|\theta)$ as the contribution from
    the "likelihood" and treating $p(\theta| \vx_n)$ as an "informative"
    prior.
    
    ]



