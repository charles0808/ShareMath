# Title
Taylor's Theorem

# Expression
P_k(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 \\+ \cdots + \frac{f^{(k)}(a)}{k!}(x-a)^k

# Content
Let $k \ge 1$ be an integer and let the function $f : R \to R$ be $k$ times differentiable at the point $a \in R$. Then there exists a function $h_k : R \to R$ such that

$f(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots + \frac{f^{(k)}(a)}{k!}(x-a)^k + h_k(x)(x-a)^k$,

$\mbox{and}\quad\lim_{x\to a}h_k(x)=0$.

This is called the **[Peano][1] form of the remainder**.

The polynomial appearing in **Taylor's theorem** is the $k$-th order **Taylor polynomial**

$P_k(x) = f(a) + f'(a)(x-a) + \frac{f''(a)}{2!}(x-a)^2 + \cdots + \frac{f^{(k)}(a)}{k!}(x-a)^k$

of the function $f$ at the point $a$. The Taylor polynomial is the unique "asymptotic best fit" polynomial in the sense that if there exists a function $h_k : R \to R$ and a $k$-th order polynomial $p$ such that

$f(x) = p(x) + h_k(x)(x-a)^k, \quad \lim_{x\to a}h_k(x)=0$,

then $p = P_k$. Taylor's theorem describes the asymptotic behavior of the remainder term

$R_k(x) = f(x) - P_k(x)$,

which is the approximation error when approximating $f$ with its Taylor polynomial. Using the [little-o notation][2] the statement in Taylor's theorem reads as

$R_k(x) = o(|x-a|^k), \quad x\to a$.

[1]: https://en.wikipedia.org/wiki/Peano
[2]: https://en.wikipedia.org/wiki/Little-o_notation













# Title
Mass–Energy Equivalence

# Expression
E=mc^2

# Content
In physics, **mass–energy equivalence** is a concept formulated by [Albert Einstein][1] that explains the relationship between mass and energy. It states every mass has an energy equivalent and vice versa—expressed using the formula $E = mc^2$ where $E$ is the energy of a physical system, $m$ is the mass of the system, and $c$ is the speed of light in a vacuum (about $3\times 10^8 m/s$). In words, energy equals mass multiplied by the speed of light squared. Because the speed of light is a very large number in everyday units, the formula implies that any small amount of matter contains a very large amount of energy. Some of this energy may be released as heat and light by chemical or nuclear transformations. This also serves to convert units of mass to units of energy, no matter what system of measurement units used.

Mass–energy equivalence arose originally from special relativity as a paradox described by [Henri Poincaré][2]. Einstein proposed it in 1905, in the paper _Does the inertia of a body depend upon its energy-content?_, one of his [Annus Mirabilis][3] ("Miraculous Year") Papers. Einstein was the first to propose that the equivalence of mass and energy is a general principle and a consequence of the [symmetries of space and time][4].

A consequence of the mass–energy equivalence is that if a body is stationary, it still has some internal or intrinsic energy, called its rest energy. Rest mass and rest energy are equivalent and remain proportional to each other. When the body is in motion (relative to an observer), its total energy is greater than its rest energy. The rest mass (or rest energy) remains an important quantity in this case because it remains the same regardless of this motion, even for the extreme speeds or gravity considered in special and general relativity; thus it is also called the invariant mass.

[1]: https://en.wikipedia.org/wiki/Albert_Einstein
[2]: https://en.wikipedia.org/wiki/Henri_Poincar%C3%A9
[3]: https://en.wikipedia.org/wiki/Annus_Mirabilis_Papers
[4]: https://en.wikipedia.org/wiki/Spacetime_symmetries
