
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
(assert (or (= l2 l3) (= l2 Nil) (= l2 Nil)) )
(assert (= l0 Nil) )
(assert (or (is-Cons Nil) (is-Nil l1) (= l2 Nil)) )
(assert (and (is-Cons Nil) (= l1 l3) (is-Cons l2) (= l3 l1)) )
(check-sat)