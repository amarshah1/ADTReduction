
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
(assert (and (is-Cons l1) (= l0 l1) (is-Cons Nil) (= l2 Nil)) )
(assert (or (is-Cons Nil) (is-Nil l1) (= l2 Nil) (= l3 l0)) )
(assert (not (is-Nil l3)) )
(assert (= l3 l1) )
(check-sat)
