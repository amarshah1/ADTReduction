
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
(assert (and (= l1 l2) (is-Cons l3) (= l2 Nil) (is-Cons Nil)) )
(assert (= l0 Nil) )
(assert (not (is-Cons Nil)) )
(assert (= l0 l2) )
(assert (or (is-Cons Nil) (= l3 Nil)) )
(assert (not (= l3 l2)) )
(assert (not (is-Nil l3)) )
(assert (or (= l3 Nil) (= l1 Nil) (is-Cons Nil) (= l0 l2)) )
(check-sat)
