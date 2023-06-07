
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
(assert (not (= l3 l2)) )
(assert (= l0 l3) )
(assert (or (= l2 Nil) (is-Cons Nil)) )
(assert (is-Cons Nil) )
(assert (= l1 Nil) )
(assert (is-Nil l1) )
(assert (and (= l1 Nil) (= l0 Nil) (= l0 l1) (= l0 Nil)) )
(assert (= l3 Nil) )
(check-sat)
