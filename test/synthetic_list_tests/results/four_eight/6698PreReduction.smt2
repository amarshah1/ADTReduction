
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
(assert (and (= l1 l2) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (is-Cons Nil) )
(assert (or (= l1 l2) (= l2 Nil) (= l0 Nil)) )
(assert (or (= l2 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (= l0 l3) )
(assert (and (= l2 l1) (= l0 Nil) (= l0 Nil)) )
(check-sat)
