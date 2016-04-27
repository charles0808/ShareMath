# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

begin
  anonymous = User.find(:params => {:email => 'anonymous@rix.li'})
rescue
  anonymous = User.create! :email => 'anonymous@rix.li', :password => 'oijoij', :password_confirmation => 'oijoij'
end

begin
  user = User.find(:params => {:email => 'i@rix.li'})
rescue
  user = User.create! :email => 'i@rix.li', :password => 'oijoij', :password_confirmation => 'oijoij'
end

begin
  Formula.find(:params => {:title => 'Pythagorean Theorem'})
rescue
  Formula.create!(
    user: anonymous,
    title: 'Pythagorean Theorem',
    expression: 'a^2+b^2=c^2',
    content: 'In mathematics, the Pythagorean theorem, also known as Pythagoras\' theorem, is a fundamental relation in Euclidean geometry among the three sides of a right triangle. It states that the square of the hypotenuse (the side opposite the right angle) is equal to the sum of the squares of the other two sides. The theorem can be written as an equation relating the lengths of the sides $a$, $b$ and $c$, often called the "Pythagorean equation":

$a^2 + b^2 = c^2$,

where $c$ represents the length of the hypotenuse and $a$ and $b$ the lengths of the triangle\'s other two sides.

Although it is often argued that knowledge of the theorem predates him, the theorem is named after the ancient Greek mathematician Pythagoras (c. 570 – c. 495 BC) as it is he who, by tradition, is credited with its first recorded proof. There is some evidence that Babylonian mathematicians understood the formula, although little of it indicates an application within a mathematical framework. Mesopotamian, Indian and Chinese mathematicians all discovered the theorem independently and, in some cases, provided proofs for special cases.

The theorem has been given numerous proofs – possibly the most for any mathematical theorem. They are very diverse, including both geometric proofs and algebraic proofs, with some dating back thousands of years. The theorem can be generalized in various ways, including higher-dimensional spaces, to spaces that are not Euclidean, to objects that are not right triangles, and indeed, to objects that are not triangles at all, but $n$-dimensional solids. The Pythagorean theorem has attracted interest outside mathematics as a symbol of mathematical abstruseness, mystique, or intellectual power; popular references in literature, plays, musicals, songs, stamps and cartoons abound.'
  )
end

begin
  Formula.find(:params => {:title => 'Euler\'s Theorem'})
rescue
  Formula.create!(
    user: user,
    title: 'Euler\'s Theorem',
    expression: 'a^{\varphi (n)} \equiv 1 \pmod{n}',
    content: 'In number theory, **Euler\'s theorem** (also known as the **Fermat–Euler theorem** or **Euler\'s totient theorem**) states that if $n$ and a are coprime positive integers, then

$a^{\varphi (n)} \equiv 1 \pmod{n}$

where $\varphi (n)$ is **Euler\'s totient function**. (The notation is explained in the article [Modular arithmetic][1].) In 1736, Leonhard Euler published his proof of Fermat\'s little theorem, which Fermat had presented without proof. Subsequently, Euler presented other proofs of the theorem, culminating with &quot;Euler\'s theorem&quot; in his paper of 1763, in which he attempted to find the smallest exponent for which Fermat\'s little theorem was always true.

The converse of Euler\'s theorem is also true: if the above congruence is true, then $a$ and $n$ must be coprime.

The theorem is a generalization of **Fermat\'s little theorem**, and is further generalized by **Carmichael\'s theorem**.

The theorem may be used to easily reduce large powers modulo $n$. For example, consider finding the ones place decimal digit of 7222, i.e. $7222 \pmod{10}$. Note that 7 and 10 are coprime, and $\varphi (10) = 4$. So Euler\'s theorem yields $7^4 \equiv 1 \pmod{10}$, and we get $7^{222} \equiv 7^{4 \times 55 + 2} \equiv (7^4)^{55} \times 7^2 \equiv 1^{55} \times 7^2 \equiv 49 \equiv 9 \pmod{10}$.

Note that if $a^{\varphi (n)} \equiv 1 \pmod{n}$, then also $(a^{\varphi (n)})^k \equiv 1 \pmod{n}$ for any positive $k$, because of

$(a^{\varphi (n)})^k  \equiv  (a^{\varphi (n)}\,\bmod\,n  \cdot\,(a^{\varphi (n)})^{k-1}\,\bmod\,n ) \equiv (a^{\varphi (n)})^{k-1}\pmod{n}$  and so on.

In general, when reducing a power of a modulo $n$ (where $a$ and $n$ are coprime), one needs to work modulo $\varphi (n)$ in the exponent of $a$:

if $x \equiv y \pmod{\varphi (n)}$, then $a^x \equiv a^y \pmod{n}$.

Euler\'s theorem also forms the basis of the **RSA encryption system**, where the net result of first encrypting a plaintext message, then later decrypting it, amounts to exponentiating a large input number by $k\varphi (n) + 1$, for some positive integer $k$. Euler\'s theorem then guarantees that the decrypted output number is equal to the original input number, giving back the plaintext.

[1]: https://en.wikipedia.org/wiki/Modular_arithmetic'
  )
end

begin
  Formula.find(:params => {:title => 'Green\'s Theorem'})
rescue
  Formula.create!(
    user: user,
    title: 'Green\'s Theorem',
    expression: '\oint_{C} (L\, dx + M\, dy) = \iint_{D} \left(\frac{\partial M}{\partial x} - \frac{\partial L}{\partial y}\right)\, dx\, dy',
    content: 'In mathematics, Green\'s theorem gives the relationship between a line integral around a simple closed curve $C$ and a double integral over the plane region $D$ bounded by $C$. It is named after George Green and is the two-dimensional special case of the more general **Kelvin–Stokes theorem**.'
  )
end

begin
  Formula.find(:params => {:title => 'Cauchy–Schwarz Inequality'})
rescue
  Formula.create!(
    user: user,
    title: 'Cauchy–Schwarz Inequality',
    expression: '|\langle x,y\rangle| ^2 \leq \langle x,x\rangle \cdot \langle y,y\rangle',
    content: 'In mathematics, the Cauchy–Schwarz inequality is a useful inequality encountered in many different settings, such as linear algebra, analysis, probability theory, vector algebra and other areas. It is considered to be one of the most important inequalities in all of mathematics. It has a number of generalizations, among them Hölder\'s inequality.

The inequality for sums was published by Augustin-Louis Cauchy (1821), while the corresponding inequality for integrals was first proved by Viktor Bunyakovsky (1859). The modern proof of the integral inequality was given by Hermann Amandus Schwarz (1888).'
  )
end

begin
  Formula.find(:params => {:title => 'Fourier Transform'})
rescue
  Formula.create!(
    user: user,
    title: 'Fourier Transform',
    expression: '\hat{f}(\xi) = \int_{-\infty}^\infty f(x)\ e^{- 2\pi i x \xi}dx',
    content: 'The Fourier transform decomposes a function of time (a signal) into the frequencies that make it up, similarly to how a musical chord can be expressed as the amplitude (or loudness) of its constituent notes. The Fourier transform of a function of time itself is a complex-valued function of frequency, whose absolute value represents the amount of that frequency present in the original function, and whose complex argument is the phase offset of the basic sinusoid in that frequency. The Fourier transform is called the frequency domain representation of the original signal. The term Fourier transform refers to both the frequency domain representation and the mathematical operation that associates the frequency domain representation to a function of time. The Fourier transform is not limited to functions of time, but in order to have a unified language, the domain of the original function is commonly referred to as the time domain. For many functions of practical interest one can define an operation that reverses this: the inverse Fourier transformation, also called Fourier synthesis, of a frequency domain representation combines the contributions of all the different frequencies to recover the original function of time.'
  )
end

begin
  Formula.find(:params => {:title => 'Stokes\' Theorem'})
rescue
  Formula.create!(
    user: user,
    title: 'Stokes\' Theorem',
    expression: '\int_M d\omega = \oint_{\partial M} \omega',
    content: 'Let $M$ be an oriented piecewise smooth manifold of dimension $n$ and let $\omega$ be an $n−1$ form that is a compactly supported differential form on $M$ of class $C^1$. If $\partial M$ denotes the boundary of $M$ with its induced orientation, then

$\int_M d\omega = \oint_{\partial M} \omega$.

Here $d$ is the exterior derivative, which is defined using the manifold structure only.

The theorem is often used in situations where $M$ is an embedded oriented submanifold of some bigger manifold on which the form $\omega$ is defined.'
  )
end

begin
  Formula.find(:params => {:title => 'Winding Number'})
rescue
  Formula.create!(
    user: user,
    title: 'Winding Number',
    expression: '\frac{1}{2\pi i} \oint_C \frac{dz}{z}',
    content: 'In complex analysis, the winding number of a closed curve $C$ in the complex plane can be expressed in terms of the complex coordinate $z = x + iy$. Specifically, if we write $z = re^{iθ}$, then

$dz = e^{i\theta} dr + ire^{i\theta} d\theta$,

and therefore

$\frac{dz}{z} = \frac{dr}{r} + i\ d\theta = d[ \ln r ] + i\ d\theta$.

The total change in $\ln(r)$ is zero, and thus the integral of $dz⁄z$ is equal to $i$ multiplied by the total change in $\theta$. Therefore:

$\text{winding number} = \frac{1}{2\pi i} \oint_C \frac{dz}{z}$.

More generally, the winding number of $C$ around any complex number $a$ is given by

$\frac{1}{2\pi i} \oint_C \frac{dz}{z - a}$.

This is a special case of the famous Cauchy integral formula. Winding numbers play a very important role throughout complex analysis (c.f. the statement of the residue theorem).'
  )
end

begin
  Formula.find(:params => {:title => 'Residue Theorem'})
rescue
  Formula.create!(
    user: user,
    title: 'Residue Theorem',
    expression: '\oint_\gamma f(z)\, dz = 2\pi i \sum_{k=1}^n \operatorname{I}(\gamma, a_k) \operatorname{Res}( f, a_k )',
    content: 'In complex analysis, the residue theorem, sometimes called Cauchy\'s residue theorem, is a powerful tool to evaluate line integrals of analytic functions over closed curves; it can often be used to compute real integrals as well. It generalizes the **Cauchy integral theorem** and **Cauchy\'s integral formula**. From a geometrical perspective, it is a special case of the generalized **Stokes\' theorem**.

The statement is as follows:

Suppose $U$ is a simply connected open subset of the complex plane, and $a_1,...,a_n$ are finitely many points of $U$ and $f$ is a function which is defined and holomorphic on $U \ {a_1,...,a_n}$. If $\gamma$ is a closed rectifiable curve in $U$ which does not meet any of the $a_k$,

$\oint_\gamma f(z)\, dz = 2\pi i \sum_{k=1}^n \operatorname{I}(\gamma, a_k) \operatorname{Res}( f, a_k )$.

If $\gamma$ is a positively oriented simple closed curve, $\operatorname{I}(\gamma, a_k) = 1$ if $a_k$ is in the interior of $\gamma$, and 0 if not, so

$\oint_\gamma f(z)\, dz = 2\pi i \sum \operatorname{Res}( f, a_k )$

with the sum over those $k$ for which $a_k$ is inside $\gamma$.

Here, $\operatorname{Res}( f, a_k )$ denotes the residue of $f$ at $a_k$, and $\operatorname{I}(\gamma, a_k)$ is the winding number of the curve $\gamma$ about the point $a_k$. This winding number is an integer which intuitively measures how many times the curve $\gamma$ winds around the point $a_k$; it is positive if $\gamma$ moves in a counter clockwise ("mathematically positive") manner around $a_k$ and 0 if $\gamma$ doesn\'t move around $a_k$ at all.

The relationship of the residue theorem to **Stokes\' theorem** is given by the Jordan curve theorem. The general plane curve $\gamma$ must first be reduced to a set of simple closed curves ${\gamma_i}$ whose total is equivalent to $\gamma$ for integration purposes; this reduces the problem to finding the integral of $f dz$ along a Jordan curve $\gamma_i$ with interior $V$. The requirement that $f$ be holomorphic on $U_0 = U \ {ak}$ is equivalent to the statement that the exterior derivative $d(f dz) = 0$ on $U_0$. Thus if two planar regions $V$ and $W$ of $U$ enclose the same subset ${a_j}$ of ${a_k}$, the regions $V/W$ and $W/V$ lie entirely in $U_0$, and hence $\scriptstyle\int_{V \backslash W} d(f \, dz) - \int_{W \backslash V} d(f \, dz)$ is well-defined and equal to zero. Consequently, the contour integral of $f dz$ along $\gamma_j = \delta V$ is equal to the sum of a set of integrals along paths $\lambda_j$, each enclosing an arbitrarily small region around a single $a_j$—the residues of $f$ (up to the conventional factor $2\pi i$) at ${a_j}$. Summing over ${γ_j}$, we recover the final expression of the contour integral in terms of the winding numbers ${\operatorname{I}(\gamma, a_k)}$.

In order to evaluate real integrals, the residue theorem is used in the following manner: the integrand is extended to the complex plane and its residues are computed (which is usually easy), and a part of the real axis is extended to a closed curve by attaching a half-circle in the upper or lower half-plane, forming a semicircle. The integral over this curve can then be computed using the residue theorem. Often, the half-circle part of the integral will tend towards zero as the radius of the half-circle grows, leaving only the real-axis part of the integral, the one we were originally interested in.'
  )
end

begin
  Formula.find(:params => {:title => 'Time-Dependent Schrödinger Equation'})
rescue
  Formula.create!(
    user: user,
    title: 'Time-Dependent Schrödinger Equation',
    expression: 'i \hbar \frac{\partial}{\partial t}\Psi(\mathbf{r},t) = \hat H \Psi(\mathbf{r},t)',
    content: 'The form of the **Schrödinger equation** depends on the physical situation (see below for special cases). The most general form is the **time-dependent Schrödinger equation**, which gives a description of a system evolving with time:

$i \hbar \frac{\partial}{\partial t}\Psi(\mathbf{r},t) = \hat H \Psi(\mathbf{r},t)$

where $i$ is the imaginary unit, $\hbar$ is the **Planck constant** divided by $2\pi$, the symbol $\frac{\delta}{\delta t}$ indicates a partial derivative with respect to time $t$, $\Psi$ (the Greek letter psi) is the wave function of the quantum system, and $\hat H$ is the Hamiltonian operator (which characterizes the total energy of any given wave function and takes different forms depending on the situation).'
  )
end
