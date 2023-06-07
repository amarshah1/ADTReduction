
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
(assert (not (is-Nil l2)) )
(assert (is-Cons Nil) )
(assert (and (= l0 Nil) (is-Nil l2) (is-Cons Nil) (= l2 l2)) )
(assert (and (= l2 l3) (= l3 Nil)) )
(check-sat)
