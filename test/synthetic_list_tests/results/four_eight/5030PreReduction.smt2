
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
(assert (not (= l1 l3)) )
(assert (and (is-Cons Nil) (= l2 Nil)) )
(assert (= l2 Nil) )
(assert (is-Cons l3) )
(assert (is-Cons Nil) )
(assert (not (= l0 Nil)) )
(assert (and (= l2 Nil) (is-Nil Nil)) )
(assert (and (= l3 Nil) (is-Cons Nil) (is-Nil l3) (= l1 l0)) )
(check-sat)
