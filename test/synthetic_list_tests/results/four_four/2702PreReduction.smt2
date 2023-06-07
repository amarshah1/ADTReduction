
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
(assert (and (= l2 l0) (is-Cons l3) (is-Nil l1)) )
(assert (= l1 l2) )
(assert (or (= l1 Nil) (= l1 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil) (= l2 l1) (= l3 l2)) )
(check-sat)
