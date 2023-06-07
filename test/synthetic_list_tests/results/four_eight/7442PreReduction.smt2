
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
(assert (is-Cons l1) )
(assert (and (is-Cons Nil) (= l1 l3) (is-Cons Nil)) )
(assert (not (is-Cons Nil)) )
(assert (or (is-Cons l1) (= l3 Nil)) )
(assert (or (is-Cons l3) (= l0 Nil) (= l1 Nil) (= l3 Nil)) )
(assert (and (= l3 Nil) (= l2 Nil)) )
(assert (not (= l2 l0)) )
(assert (is-Cons Nil) )
(check-sat)