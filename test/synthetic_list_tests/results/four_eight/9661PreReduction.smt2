
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
(assert (not (= l0 Nil)) )
(assert (not (= l3 l3)) )
(assert (is-Cons Nil) )
(assert (and (= l3 Nil) (= l2 l1)) )
(assert (is-Nil Nil) )
(assert (= l2 l2) )
(assert (and (= l2 l3) (= l3 Nil) (is-Cons Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(check-sat)
