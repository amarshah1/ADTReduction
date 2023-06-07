
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
(assert (= l3 Nil) )
(assert (not (= l0 Nil)) )
(assert (and (is-Cons Nil) (= l1 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l1 Nil) (= l0 Nil)) )
(assert (not (is-Cons Nil)) )
(assert (= l3 l1) )
(assert (or (= l0 l2) (= l2 l0) (= l3 Nil) (= l1 Nil)) )
(check-sat)
