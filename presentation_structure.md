Presentation Structure: Bjagi, dreifni og orsakasamhengi
Introduction (2-3 minutes)

Brief welcome and context for the talk
Reference to the event theme: "Gagnagæði – betri greind"
Opening example using hospitals to illustrate selection bias in data
Preview of main themes: how statistical concepts remain crucial in the AI era

1. Ronald Fisher and the Importance of Randomization (4-5 minutes)

Fisher's revolutionary contributions to experimental design
Why randomization matters: addressing confounding bias
The agricultural experiments that changed science
Key principle: randomization as the foundation of causal inference
How these principles transcend computational power and remain relevant in modern data science
Visual: Simple diagram showing randomized vs non-randomized experiment

2. Bias vs. Variance Tradeoff (3-4 minutes)

Explanation of the two fundamental sources of error
Visual: Target/bullseye diagram showing the different bias-variance scenarios
The scaling properties: how more data affects each type of error
Key insight: Big data primarily reduces variance but not bias
Connection to AI: why massive datasets still produce biased models
Example: Simple demonstration of a biased model becoming more confident with more data

3. Causal Inference and Pearl's "do-calculus" (5-6 minutes)

The limits of observational data
Introduction to Judea Pearl's framework
The crucial distinction: P(Y|X) vs P(Y|do(X))
Visual: Simple causal diagram (DAG) illustrating correlation vs causation
The ladder of causation: association → intervention → counterfactuals
Why modern AI systems struggle with causality
Example: A simple case where intervention differs from observation

4. When Correlation ≠ Causation: Cautionary Tales (4-5 minutes)

Examples from "AI Snake Oil" or similar sources
Case study 1: A medical AI that learned the wrong signals
Case study 2: A predictive system that reinforced existing biases
Analysis of what went wrong in statistical terms
How proper causal understanding could have prevented these failures
Visual: Before/after showing how causal reasoning changes predictions

5. Looking Forward: Better Workflows (3-4 minutes)

Practical guidelines for ensuring data quality in AI development
The importance of causal diagrams before modeling
Techniques for sensitivity analysis and bias detection
Why small, well-designed datasets often outperform massive messy ones
The complementary relationship between statistical rigor and AI capabilities

Conclusion (1-2 minutes)

Recap of key messages
Final statement on quality vs quantity
Call to action: what attendees can implement in their own work
Thank you and invitation for questions

Visual Elements to Prepare

Timeline showing the evolution from Fisher to modern causal inference
Target diagram for bias-variance tradeoff
Simple causal diagrams for key examples
Before/after visualizations showing impact of proper causal reasoning
Quality vs quantity visualization