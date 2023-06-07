
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (is-Cons Nil) )
(assert (or (= l1 Nil) (= l3 l1) (is-Cons l0) (is-Cons Nil)) )
(assert (or (= l3 l3) (= l3 l2) (= l2 Nil) (is-Nil l0)) )
(assert (or (= l1 Nil) (is-Cons l3) (is-Nil l0)) )
(check-sat)
