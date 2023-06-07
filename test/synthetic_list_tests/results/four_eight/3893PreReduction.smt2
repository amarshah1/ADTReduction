
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
(assert (is-Cons Nil) )
(assert (and (is-Cons l0) (= l1 Nil) (is-Nil Nil) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (not (= l3 l2)) )
(assert (= l3 l1) )
(assert (and (= l1 l1) (is-Nil l3) (= l3 l0)) )
(assert (= l2 Nil) )
(check-sat)
