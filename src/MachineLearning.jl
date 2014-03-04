module MachineLearning
    using
        DataFrames,
        Devectorize,
        Distributions,
        Optim,
        RDatasets,
        StatsBase

    export
        # types
        AbstractRegressionTree,
        Bart,
        BartOptions,
        BartTreeTransformationProbabilies,
        Branch,
        ClassificationForest,
        ClassificationForestOptions,
        ClassificationModel,
        ClassificationModelOptions,
        ClassificationLeaf,
        ClassificationPipeline,
        ClassificationPipelineAny,
        ClassificationTree,
        ClassificationTreeOptions,
        DecisionBranch,
        DecisionNode,
        DecisionTree,
        Leaf,
        NeuralNet,
        NeuralNetLayer,
        NeuralNetOptions,
        Node,
        PipelineOptions,
        PipelineOptionsAny,
        StopAfterIteration,
        RegressionForest,
        RegressionForestOptions,
        RegressionModel,
        RegressionModelOptions,
        StopAfterValidationErrorStopsImproving,
        SupervisedModel,
        SupervisedModelOptions,
        Transformer,
        TransformerOptions,
        Tree,
        Zmuv,
        ZmuvOptions,

        # methods
        accuracy,
        bart_options,
        classification_forest_options,
        classification_split_location,
        classification_tree_options,
        cost,
        cost_gradient!,
        cost_gradient_update_net!,
        depth,
        fit,
        fit_predict,
        float_matrix,
        gini,
        initialize_net,
        initialize_neural_net_temporary,
        leaves,
        log_loss,
        mean_log_loss,
        mean_squared_error,
        net_to_weights,
        neural_net_options,
        nonterminal_node_prior,
        one_hot,
        predict,
        predict_probs,
        regression_forest_options,
        regression_split_location,
        regression_tree_options,
        split_train_test,
        streaming_mse,
        transform,
        valid_tree,
        valid_node,
        weights_to_net!

    include("common.jl")
    include("tree.jl")
    include("decision_tree.jl")
    include("bart.jl")
    include("metrics.jl")
    include("neural_net.jl")
    include("pipeline.jl")
    include("random_forest.jl")
    include("split.jl")
    include("transform/zmuv.jl")
end