
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
(assert (is-Nil l2) )
(assert (= l2 Nil) )
(assert (= l1 Nil) )
(assert (and (= l3 Nil) (= l1 Nil) (= l1 l1)) )
(assert (not (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l0 l3) )
(assert (is-Cons Nil) )
(check-sat)