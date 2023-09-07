class Tree {
  final word;
  Tree? leftChild;
  Tree? rightChild;

  Tree(this.word, this.leftChild, this.rightChild);

  Tree insertInTree(Tree? tree,String word, String? filename){
    if (tree == null) { return Tree(word, null, null); }
    if (tree.word.compareIgnoreCase(word == -1)){
      tree.leftChild = insertInTree(tree, word, '');
    }
    else {
      tree.rightChild = insertInTree(tree, word, '');
    }
    return tree;
  }

  walkTree(Tree? tree, void action(String word)) {
    if (tree == null) { return; }
    walkTree(tree.leftChild, action);
    action(word);
    walkTree(tree.rightChild, action);
  }
}